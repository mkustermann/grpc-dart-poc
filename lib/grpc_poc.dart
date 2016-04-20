// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library grpc_poc;

import 'dart:async';
import 'dart:io';
import 'dart:convert';

import 'package:http2/transport.dart' as http2;
import 'package:http2/src/testing/debug.dart' as http2_debug;
import 'package:protobuf/protobuf.dart';

const bool Debug = false;
const bool Verbose = false;

class GrpcService {
  final String hostname;
  final String accessToken;

  GrpcService(this.hostname, this.accessToken);

  GrpcClientConnection _grpc;

  Future connect() async {
    var socket = await SecureSocket.connect(
        hostname, 443, supportedProtocols: ['h2']);

    var ins = socket;
    var outs = socket;
    if (Debug) {
      ins = http2_debug.decodeVerbose(socket, false, verbose: Verbose);
      outs = http2_debug.decodeOutgoingVerbose(socket, false, verbose: Verbose);
    }

    var connection = new http2.ClientTransportConnection.viaStreams(ins, outs);
    var authHeaders = [];
    if (accessToken != null) {
      authHeaders = [new http2.Header.ascii('authorization', 'Bearer $accessToken')];
    }
    _grpc = new GrpcClientConnection('https', hostname, connection, authHeaders);
  }

  Future<GeneratedMessage> invoke(String service,
                                  String method,
                                  GeneratedMessage msg,
                                  GeneratedMessage result) {
    return _grpc.invoke(service, method, msg, result);
  }

  Future stop() =>  _grpc.stop();
}

class GrpcClientConnection {
  final String scheme;
  final String authority;
  final http2.ClientTransportConnection connection;
  final List<http2.Header> additionalHeaders;

  GrpcClientConnection(this.scheme,
                       this.authority,
                       this.connection,
                       this.additionalHeaders);

  Future<GeneratedMessage> invoke(String service,
                                  String method,
                                  GeneratedMessage msg,
                                  GeneratedMessage result) async {
    var headers = [
        new http2.Header.ascii(':method', 'POST'),
        new http2.Header.ascii(':scheme', scheme),
        new http2.Header.ascii(':path', '/$service/$method'),
        new http2.Header.ascii(':authority', authority),
        new http2.Header.ascii('grpc-timeout', '2S'),
        new http2.Header.ascii('content-type', 'application/grpc'),
        new http2.Header.ascii('te', 'trailers'),
    ];
    headers.addAll(additionalHeaders);

    http2.TransportStream stream = connection.makeRequest(headers);
    fail(msg) {
      stream.terminate();
      throw new Exception(msg);
    }

    // I) Sending request.

    var data = msg.writeToBuffer();
    var len = data.length;
    stream.sendData([0 /* un-compressed */,
                     (len >> 24) & 0xff,
                     (len >> 16) & 0xff,
                     (len >> 8) & 0xff,
                     (len >> 0) & 0xff]);
    stream.sendData(data, endStream: true);

    // II) Start reading response.

    var messageIterator = new StreamIterator(stream.incomingMessages);
    Future<http2.StreamMessage> readNextMessage({bool force: false}) async {
      bool hasMessage = await messageIterator.moveNext();
      if (!hasMessage && force) {
        fail('Expected to get more HTTP/2 messages on grpc connection.');
      }
      return hasMessage ? messageIterator.current : null;
    }

    // 1. Response headers message
    //  Headers: {
    //    ':status': '200',
    //    'content-type': 'application/grpc[+proto/json/...]', // optional
    //    'grpc-encoding': '[identity/gzip/defalte/...]', // optional
    //    'grpc-accept-encoding': '*[identity/gzip/...]', // optional
    //    ...
    //  }
    var message = await readNextMessage(force: true);
    if (message is! http2.HeadersStreamMessage) {
      fail('Expected response headers.');
    }
    var responseHeaders = _headers2Map(message);
    var status = responseHeaders[':status'];
    var contentType = responseHeaders['content-type'];
    var grpcEncoding = responseHeaders['grpc-encoding'];
    if (status?.length != 1 || status[0] != '200') {
      fail('Expected status "200" (was: "$status")');
    }
    if (contentType?.length != 1 || contentType[0] != 'application/grpc') {
      fail('Expected content-type "application/grpc" (was: "$contentType").');
    }
    if (grpcEncoding != null) {
      grpcEncoding = grpcEncoding[0];
    }

    // 2. Length-encoded messages (optionally compressed)
    var allBytes = new BytesBuilder(copy: false);
    message = await readNextMessage(force: true);
    while (message is http2.DataStreamMessage) {
      allBytes.add(message.bytes);
      message = await readNextMessage(force: false);
    }
    var responseData = allBytes.takeBytes();

    // 3. Trailers
    //  Headers: {
    //    'grpc-status': ...,
    //    'grpc-message': ...,
    //     ...
    //  }
    if (message is! http2.HeadersStreamMessage) {
      fail('Expected trailing headers');
    }
    var trailingHeaders = _headers2Map(message);
    var grpcStatus = trailingHeaders['grpc-status'];
    var grpcMessage = trailingHeaders['grpc-message'];
    if (grpcStatus?.length != 1 || grpcStatus[0] != '0') {
      fail('Expected grpc-status of "0" '
           '(was: "$grpcStatus", grpc-message was: "$grpcMessage")');
    }

    // III) Decode message and return it.

    if (responseData.length < 5) {
      fail('Expected length-encoded message (bytes were: "$responseData")');
    }

    bool compressed = responseData[0] == 1;
    if (compressed) {
      fail('Expected to get uncompressed message back, got compressed message'
           '(grpc encoding was: "$grpcEncoding"). No compression support yet!');
    }

    var lengthBytes = responseData.sublist(1, 5);
    var length = lengthBytes[0] << 24 |
                 lengthBytes[1] << 16 |
                 lengthBytes[2] << 8 |
                 lengthBytes[3];
    if (length != (responseData.length - 5)) {
      fail('Expected exactly as many bytes as indicated in message header.');
    }

    var realData = responseData.sublist(5);
    result.mergeFromBuffer(realData);
    return result;
  }

  Future stop() async {
    await connection.finish();
  }
}

Map _headers2Map(http2.HeadersStreamMessage headers) {
  var headerMap = {};
  for (var header in headers.headers) {
    headerMap.putIfAbsent(ASCII.decode(header.name),
                          () => []).add(ASCII.decode(header.value));
  }
  return headerMap;
}
