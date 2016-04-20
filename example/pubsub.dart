// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library grpc_poc.example.pubsub;

import 'dart:async';
import 'dart:io';

import 'package:grpc_poc/grpc_poc.dart';

import 'package:googleapis_auth/auth_io.dart' as auth;
import 'package:http/http.dart' as http;

import 'protos/pubsub.pb.dart';

main() async {
  // Need to setup a service account in the google developers console and save
  // the credentials file as a '*.json' file.
  const ServiceAccountFilename = '/path-to-service-account.json';

  // Need to enable the Pub/Sub API in the google developers console and wait
  // until the changes have propagated.
  const GoogleCloudProject = 'cloud-project-name';

  var accessToken = await obtainAccessToken(ServiceAccountFilename, PubSub.Scopes);
  var pubsub = await PubSub.connect(accessToken);

  var response;

  response = await pubsub.CreateTopic(GoogleCloudProject, 'my-topic');
  print('Pub/Sub created topic: ${response.name}');

  wait('Wait a little until topic was created.', 10);

  response = await pubsub.CreateSubscription(GoogleCloudProject, 'my-topic', 'my-sub');
  print('Pub/Sub created subscription: ${response.name}');

  wait('Wait a little until subscription was created.', 10);

  response = await pubsub.ListTopics(GoogleCloudProject);
  print('Pub/Sub topics: ${response.topics.map((t) => t.name).toList()}');

  response = await pubsub.ListSubscriptions(GoogleCloudProject, 'my-topic');
  print('Pub/Sub subs: ${response.subscriptions}');

  response = await pubsub.Publish(GoogleCloudProject, 'my-topic', [1, 2, 3]);
  print('Pub/Sub published: ${response.messageIds}');

  wait('Wait a little until published message is available for pulling.', 10);

  response = await pubsub.Pull(GoogleCloudProject, 'my-sub');
  print('Pub/Sub pulled: ${response.receivedMessages[0].message.data}');

  await pubsub.Close();
}

class PubSub {
  static const String Hostname = 'pubsub.googleapis.com';
  static const String ServicePublisher = 'google.pubsub.v1.Publisher';
  static const String ServiceSubscriber = 'google.pubsub.v1.Subscriber';

  static const List<String> Scopes = const [
    'https://www.googleapis.com/auth/pubsub',
    'https://www.googleapis.com/auth/cloud-platform',
  ];

  final GrpcService _service;

  PubSub(this._service);

  static Future<PubSub> connect(String accessToken) async {
    var service = new GrpcService(Hostname, accessToken);
    await service.connect();
    return new PubSub(service);
  }

  Future<ListTopicsResponse> ListTopics(String project) async {
    var request = new ListTopicsRequest()
        ..project = 'projects/$project';
    return await _service.invoke(
        ServicePublisher, 'ListTopics', request, new ListTopicsResponse());
  }

  Future<ListTopicSubscriptionsResponse> ListSubscriptions(String project,
                                                           String topic) async {
    var request = new ListTopicSubscriptionsRequest()
      ..topic = 'projects/$project/topics/$topic';
    return await _service.invoke(
        ServicePublisher, 'ListTopicSubscriptions', request,
        new ListTopicSubscriptionsResponse());
  }

  Future<Topic> CreateTopic(String project, String topic) async {
    var request = new Topic()
      ..name = 'projects/$project/topics/$topic';
    return await _service.invoke(
        ServicePublisher, 'CreateTopic', request, new Topic());
  }

  Future<Subscription> CreateSubscription(String project,
                            String topic,
                            String subscription) async {
    var request = new Subscription()
      ..topic = 'projects/$project/topics/$topic'
      ..name = 'projects/$project/subscriptions/$subscription';
    return await _service.invoke(
        ServiceSubscriber, 'CreateSubscription', request, new Subscription());
  }

  Future<PublishResponse> Publish(String project, String topic, List<int> data) async {
    var request = new PublishRequest()
      ..topic = 'projects/$project/topics/$topic'
      ..messages.add(new PubsubMessage()..data = data);
    return await _service.invoke(
        ServicePublisher, 'Publish', request, new PublishResponse());
  }

  Future<PullResponse> Pull(String project, String subscription) async {
    var request = new PullRequest()
      ..subscription = 'projects/$project/subscriptions/$subscription'
      ..returnImmediately = true
      ..maxMessages = 1;
    return await _service.invoke(
        ServiceSubscriber, 'Pull', request, new PullResponse());
  }

  Future Close() => _service.stop();
}

Future<String> obtainAccessToken(String serviceAccountFilename,
                                 List<String> scopes) async {
  http.Client httpClient = new http.Client();
  var content = new File(serviceAccountFilename).readAsStringSync();
  var serviceAccount = new auth.ServiceAccountCredentials.fromJson(content);
  var credentials = await auth.obtainAccessCredentialsViaServiceAccount(
      serviceAccount, scopes, httpClient);
  await httpClient.close();
  return credentials.accessToken.data;
}

Future wait(String message, int seconds) async {
  print(message);
  await new Future.delayed(new Duration(seconds: seconds));
}
