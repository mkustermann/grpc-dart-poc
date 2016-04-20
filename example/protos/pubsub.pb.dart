///
//  Generated code. Do not modify.
///
library google.pubsub.v1;

import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart';
import 'empty.pb.dart' as google$protobuf;

class Topic extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Topic')
    ..a(1, 'name', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;

  Topic() : super();
  Topic.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Topic.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Topic clone() => new Topic()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Topic create() => new Topic();
  static PbList<Topic> createRepeated() => new PbList<Topic>();

  String get name => getField(1);
  void set name(String v) { setField(1, v); }
  bool hasName() => hasField(1);
  void clearName() => clearField(1);
}

class PubsubMessage_AttributesEntry extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PubsubMessage_AttributesEntry')
    ..a(1, 'key', GeneratedMessage.OS)
    ..a(2, 'value', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;

  PubsubMessage_AttributesEntry() : super();
  PubsubMessage_AttributesEntry.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PubsubMessage_AttributesEntry.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PubsubMessage_AttributesEntry clone() => new PubsubMessage_AttributesEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PubsubMessage_AttributesEntry create() => new PubsubMessage_AttributesEntry();
  static PbList<PubsubMessage_AttributesEntry> createRepeated() => new PbList<PubsubMessage_AttributesEntry>();

  String get key => getField(1);
  void set key(String v) { setField(1, v); }
  bool hasKey() => hasField(1);
  void clearKey() => clearField(1);

  String get value => getField(2);
  void set value(String v) { setField(2, v); }
  bool hasValue() => hasField(2);
  void clearValue() => clearField(2);
}

class PubsubMessage extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PubsubMessage')
    ..a(1, 'data', GeneratedMessage.OY)
    ..m(2, 'attributes', PubsubMessage_AttributesEntry.create, PubsubMessage_AttributesEntry.createRepeated)
    ..a(3, 'messageId', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;

  PubsubMessage() : super();
  PubsubMessage.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PubsubMessage.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PubsubMessage clone() => new PubsubMessage()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PubsubMessage create() => new PubsubMessage();
  static PbList<PubsubMessage> createRepeated() => new PbList<PubsubMessage>();

  List<int> get data => getField(1);
  void set data(List<int> v) { setField(1, v); }
  bool hasData() => hasField(1);
  void clearData() => clearField(1);

  List<PubsubMessage_AttributesEntry> get attributes => getField(2);

  String get messageId => getField(3);
  void set messageId(String v) { setField(3, v); }
  bool hasMessageId() => hasField(3);
  void clearMessageId() => clearField(3);
}

class GetTopicRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('GetTopicRequest')
    ..a(1, 'topic', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;

  GetTopicRequest() : super();
  GetTopicRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetTopicRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetTopicRequest clone() => new GetTopicRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static GetTopicRequest create() => new GetTopicRequest();
  static PbList<GetTopicRequest> createRepeated() => new PbList<GetTopicRequest>();

  String get topic => getField(1);
  void set topic(String v) { setField(1, v); }
  bool hasTopic() => hasField(1);
  void clearTopic() => clearField(1);
}

class PublishRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PublishRequest')
    ..a(1, 'topic', GeneratedMessage.OS)
    ..m(2, 'messages', PubsubMessage.create, PubsubMessage.createRepeated)
    ..hasRequiredFields = false
  ;

  PublishRequest() : super();
  PublishRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PublishRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PublishRequest clone() => new PublishRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PublishRequest create() => new PublishRequest();
  static PbList<PublishRequest> createRepeated() => new PbList<PublishRequest>();

  String get topic => getField(1);
  void set topic(String v) { setField(1, v); }
  bool hasTopic() => hasField(1);
  void clearTopic() => clearField(1);

  List<PubsubMessage> get messages => getField(2);
}

class PublishResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PublishResponse')
    ..p(1, 'messageIds', GeneratedMessage.PS)
    ..hasRequiredFields = false
  ;

  PublishResponse() : super();
  PublishResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PublishResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PublishResponse clone() => new PublishResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PublishResponse create() => new PublishResponse();
  static PbList<PublishResponse> createRepeated() => new PbList<PublishResponse>();

  List<String> get messageIds => getField(1);
}

class ListTopicsRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ListTopicsRequest')
    ..a(1, 'project', GeneratedMessage.OS)
    ..a(2, 'pageSize', GeneratedMessage.O3)
    ..a(3, 'pageToken', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;

  ListTopicsRequest() : super();
  ListTopicsRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListTopicsRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListTopicsRequest clone() => new ListTopicsRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ListTopicsRequest create() => new ListTopicsRequest();
  static PbList<ListTopicsRequest> createRepeated() => new PbList<ListTopicsRequest>();

  String get project => getField(1);
  void set project(String v) { setField(1, v); }
  bool hasProject() => hasField(1);
  void clearProject() => clearField(1);

  int get pageSize => getField(2);
  void set pageSize(int v) { setField(2, v); }
  bool hasPageSize() => hasField(2);
  void clearPageSize() => clearField(2);

  String get pageToken => getField(3);
  void set pageToken(String v) { setField(3, v); }
  bool hasPageToken() => hasField(3);
  void clearPageToken() => clearField(3);
}

class ListTopicsResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ListTopicsResponse')
    ..m(1, 'topics', Topic.create, Topic.createRepeated)
    ..a(2, 'nextPageToken', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;

  ListTopicsResponse() : super();
  ListTopicsResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListTopicsResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListTopicsResponse clone() => new ListTopicsResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ListTopicsResponse create() => new ListTopicsResponse();
  static PbList<ListTopicsResponse> createRepeated() => new PbList<ListTopicsResponse>();

  List<Topic> get topics => getField(1);

  String get nextPageToken => getField(2);
  void set nextPageToken(String v) { setField(2, v); }
  bool hasNextPageToken() => hasField(2);
  void clearNextPageToken() => clearField(2);
}

class ListTopicSubscriptionsRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ListTopicSubscriptionsRequest')
    ..a(1, 'topic', GeneratedMessage.OS)
    ..a(2, 'pageSize', GeneratedMessage.O3)
    ..a(3, 'pageToken', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;

  ListTopicSubscriptionsRequest() : super();
  ListTopicSubscriptionsRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListTopicSubscriptionsRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListTopicSubscriptionsRequest clone() => new ListTopicSubscriptionsRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ListTopicSubscriptionsRequest create() => new ListTopicSubscriptionsRequest();
  static PbList<ListTopicSubscriptionsRequest> createRepeated() => new PbList<ListTopicSubscriptionsRequest>();

  String get topic => getField(1);
  void set topic(String v) { setField(1, v); }
  bool hasTopic() => hasField(1);
  void clearTopic() => clearField(1);

  int get pageSize => getField(2);
  void set pageSize(int v) { setField(2, v); }
  bool hasPageSize() => hasField(2);
  void clearPageSize() => clearField(2);

  String get pageToken => getField(3);
  void set pageToken(String v) { setField(3, v); }
  bool hasPageToken() => hasField(3);
  void clearPageToken() => clearField(3);
}

class ListTopicSubscriptionsResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ListTopicSubscriptionsResponse')
    ..p(1, 'subscriptions', GeneratedMessage.PS)
    ..a(2, 'nextPageToken', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;

  ListTopicSubscriptionsResponse() : super();
  ListTopicSubscriptionsResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListTopicSubscriptionsResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListTopicSubscriptionsResponse clone() => new ListTopicSubscriptionsResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ListTopicSubscriptionsResponse create() => new ListTopicSubscriptionsResponse();
  static PbList<ListTopicSubscriptionsResponse> createRepeated() => new PbList<ListTopicSubscriptionsResponse>();

  List<String> get subscriptions => getField(1);

  String get nextPageToken => getField(2);
  void set nextPageToken(String v) { setField(2, v); }
  bool hasNextPageToken() => hasField(2);
  void clearNextPageToken() => clearField(2);
}

class DeleteTopicRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('DeleteTopicRequest')
    ..a(1, 'topic', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;

  DeleteTopicRequest() : super();
  DeleteTopicRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteTopicRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteTopicRequest clone() => new DeleteTopicRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static DeleteTopicRequest create() => new DeleteTopicRequest();
  static PbList<DeleteTopicRequest> createRepeated() => new PbList<DeleteTopicRequest>();

  String get topic => getField(1);
  void set topic(String v) { setField(1, v); }
  bool hasTopic() => hasField(1);
  void clearTopic() => clearField(1);
}

class Subscription extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('Subscription')
    ..a(1, 'name', GeneratedMessage.OS)
    ..a(2, 'topic', GeneratedMessage.OS)
    ..a(4, 'pushConfig', GeneratedMessage.OM, PushConfig.create, PushConfig.create)
    ..a(5, 'ackDeadlineSeconds', GeneratedMessage.O3)
    ..hasRequiredFields = false
  ;

  Subscription() : super();
  Subscription.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Subscription.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Subscription clone() => new Subscription()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static Subscription create() => new Subscription();
  static PbList<Subscription> createRepeated() => new PbList<Subscription>();

  String get name => getField(1);
  void set name(String v) { setField(1, v); }
  bool hasName() => hasField(1);
  void clearName() => clearField(1);

  String get topic => getField(2);
  void set topic(String v) { setField(2, v); }
  bool hasTopic() => hasField(2);
  void clearTopic() => clearField(2);

  PushConfig get pushConfig => getField(4);
  void set pushConfig(PushConfig v) { setField(4, v); }
  bool hasPushConfig() => hasField(4);
  void clearPushConfig() => clearField(4);

  int get ackDeadlineSeconds => getField(5);
  void set ackDeadlineSeconds(int v) { setField(5, v); }
  bool hasAckDeadlineSeconds() => hasField(5);
  void clearAckDeadlineSeconds() => clearField(5);
}

class PushConfig_AttributesEntry extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PushConfig_AttributesEntry')
    ..a(1, 'key', GeneratedMessage.OS)
    ..a(2, 'value', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;

  PushConfig_AttributesEntry() : super();
  PushConfig_AttributesEntry.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PushConfig_AttributesEntry.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PushConfig_AttributesEntry clone() => new PushConfig_AttributesEntry()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PushConfig_AttributesEntry create() => new PushConfig_AttributesEntry();
  static PbList<PushConfig_AttributesEntry> createRepeated() => new PbList<PushConfig_AttributesEntry>();

  String get key => getField(1);
  void set key(String v) { setField(1, v); }
  bool hasKey() => hasField(1);
  void clearKey() => clearField(1);

  String get value => getField(2);
  void set value(String v) { setField(2, v); }
  bool hasValue() => hasField(2);
  void clearValue() => clearField(2);
}

class PushConfig extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PushConfig')
    ..a(1, 'pushEndpoint', GeneratedMessage.OS)
    ..m(2, 'attributes', PushConfig_AttributesEntry.create, PushConfig_AttributesEntry.createRepeated)
    ..hasRequiredFields = false
  ;

  PushConfig() : super();
  PushConfig.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PushConfig.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PushConfig clone() => new PushConfig()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PushConfig create() => new PushConfig();
  static PbList<PushConfig> createRepeated() => new PbList<PushConfig>();

  String get pushEndpoint => getField(1);
  void set pushEndpoint(String v) { setField(1, v); }
  bool hasPushEndpoint() => hasField(1);
  void clearPushEndpoint() => clearField(1);

  List<PushConfig_AttributesEntry> get attributes => getField(2);
}

class ReceivedMessage extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ReceivedMessage')
    ..a(1, 'ackId', GeneratedMessage.OS)
    ..a(2, 'message', GeneratedMessage.OM, PubsubMessage.create, PubsubMessage.create)
    ..hasRequiredFields = false
  ;

  ReceivedMessage() : super();
  ReceivedMessage.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ReceivedMessage.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ReceivedMessage clone() => new ReceivedMessage()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ReceivedMessage create() => new ReceivedMessage();
  static PbList<ReceivedMessage> createRepeated() => new PbList<ReceivedMessage>();

  String get ackId => getField(1);
  void set ackId(String v) { setField(1, v); }
  bool hasAckId() => hasField(1);
  void clearAckId() => clearField(1);

  PubsubMessage get message => getField(2);
  void set message(PubsubMessage v) { setField(2, v); }
  bool hasMessage() => hasField(2);
  void clearMessage() => clearField(2);
}

class GetSubscriptionRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('GetSubscriptionRequest')
    ..a(1, 'subscription', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;

  GetSubscriptionRequest() : super();
  GetSubscriptionRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetSubscriptionRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetSubscriptionRequest clone() => new GetSubscriptionRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static GetSubscriptionRequest create() => new GetSubscriptionRequest();
  static PbList<GetSubscriptionRequest> createRepeated() => new PbList<GetSubscriptionRequest>();

  String get subscription => getField(1);
  void set subscription(String v) { setField(1, v); }
  bool hasSubscription() => hasField(1);
  void clearSubscription() => clearField(1);
}

class ListSubscriptionsRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ListSubscriptionsRequest')
    ..a(1, 'project', GeneratedMessage.OS)
    ..a(2, 'pageSize', GeneratedMessage.O3)
    ..a(3, 'pageToken', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;

  ListSubscriptionsRequest() : super();
  ListSubscriptionsRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListSubscriptionsRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListSubscriptionsRequest clone() => new ListSubscriptionsRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ListSubscriptionsRequest create() => new ListSubscriptionsRequest();
  static PbList<ListSubscriptionsRequest> createRepeated() => new PbList<ListSubscriptionsRequest>();

  String get project => getField(1);
  void set project(String v) { setField(1, v); }
  bool hasProject() => hasField(1);
  void clearProject() => clearField(1);

  int get pageSize => getField(2);
  void set pageSize(int v) { setField(2, v); }
  bool hasPageSize() => hasField(2);
  void clearPageSize() => clearField(2);

  String get pageToken => getField(3);
  void set pageToken(String v) { setField(3, v); }
  bool hasPageToken() => hasField(3);
  void clearPageToken() => clearField(3);
}

class ListSubscriptionsResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ListSubscriptionsResponse')
    ..m(1, 'subscriptions', Subscription.create, Subscription.createRepeated)
    ..a(2, 'nextPageToken', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;

  ListSubscriptionsResponse() : super();
  ListSubscriptionsResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListSubscriptionsResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListSubscriptionsResponse clone() => new ListSubscriptionsResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ListSubscriptionsResponse create() => new ListSubscriptionsResponse();
  static PbList<ListSubscriptionsResponse> createRepeated() => new PbList<ListSubscriptionsResponse>();

  List<Subscription> get subscriptions => getField(1);

  String get nextPageToken => getField(2);
  void set nextPageToken(String v) { setField(2, v); }
  bool hasNextPageToken() => hasField(2);
  void clearNextPageToken() => clearField(2);
}

class DeleteSubscriptionRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('DeleteSubscriptionRequest')
    ..a(1, 'subscription', GeneratedMessage.OS)
    ..hasRequiredFields = false
  ;

  DeleteSubscriptionRequest() : super();
  DeleteSubscriptionRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteSubscriptionRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteSubscriptionRequest clone() => new DeleteSubscriptionRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static DeleteSubscriptionRequest create() => new DeleteSubscriptionRequest();
  static PbList<DeleteSubscriptionRequest> createRepeated() => new PbList<DeleteSubscriptionRequest>();

  String get subscription => getField(1);
  void set subscription(String v) { setField(1, v); }
  bool hasSubscription() => hasField(1);
  void clearSubscription() => clearField(1);
}

class ModifyPushConfigRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ModifyPushConfigRequest')
    ..a(1, 'subscription', GeneratedMessage.OS)
    ..a(2, 'pushConfig', GeneratedMessage.OM, PushConfig.create, PushConfig.create)
    ..hasRequiredFields = false
  ;

  ModifyPushConfigRequest() : super();
  ModifyPushConfigRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ModifyPushConfigRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ModifyPushConfigRequest clone() => new ModifyPushConfigRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ModifyPushConfigRequest create() => new ModifyPushConfigRequest();
  static PbList<ModifyPushConfigRequest> createRepeated() => new PbList<ModifyPushConfigRequest>();

  String get subscription => getField(1);
  void set subscription(String v) { setField(1, v); }
  bool hasSubscription() => hasField(1);
  void clearSubscription() => clearField(1);

  PushConfig get pushConfig => getField(2);
  void set pushConfig(PushConfig v) { setField(2, v); }
  bool hasPushConfig() => hasField(2);
  void clearPushConfig() => clearField(2);
}

class PullRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PullRequest')
    ..a(1, 'subscription', GeneratedMessage.OS)
    ..a(2, 'returnImmediately', GeneratedMessage.OB)
    ..a(3, 'maxMessages', GeneratedMessage.O3)
    ..hasRequiredFields = false
  ;

  PullRequest() : super();
  PullRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PullRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PullRequest clone() => new PullRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PullRequest create() => new PullRequest();
  static PbList<PullRequest> createRepeated() => new PbList<PullRequest>();

  String get subscription => getField(1);
  void set subscription(String v) { setField(1, v); }
  bool hasSubscription() => hasField(1);
  void clearSubscription() => clearField(1);

  bool get returnImmediately => getField(2);
  void set returnImmediately(bool v) { setField(2, v); }
  bool hasReturnImmediately() => hasField(2);
  void clearReturnImmediately() => clearField(2);

  int get maxMessages => getField(3);
  void set maxMessages(int v) { setField(3, v); }
  bool hasMaxMessages() => hasField(3);
  void clearMaxMessages() => clearField(3);
}

class PullResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('PullResponse')
    ..m(1, 'receivedMessages', ReceivedMessage.create, ReceivedMessage.createRepeated)
    ..hasRequiredFields = false
  ;

  PullResponse() : super();
  PullResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PullResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PullResponse clone() => new PullResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static PullResponse create() => new PullResponse();
  static PbList<PullResponse> createRepeated() => new PbList<PullResponse>();

  List<ReceivedMessage> get receivedMessages => getField(1);
}

class ModifyAckDeadlineRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ModifyAckDeadlineRequest')
    ..a(1, 'subscription', GeneratedMessage.OS)
    ..a(2, 'ackId', GeneratedMessage.OS)
    ..p(4, 'ackIds', GeneratedMessage.PS)
    ..a(3, 'ackDeadlineSeconds', GeneratedMessage.O3)
    ..hasRequiredFields = false
  ;

  ModifyAckDeadlineRequest() : super();
  ModifyAckDeadlineRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ModifyAckDeadlineRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ModifyAckDeadlineRequest clone() => new ModifyAckDeadlineRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ModifyAckDeadlineRequest create() => new ModifyAckDeadlineRequest();
  static PbList<ModifyAckDeadlineRequest> createRepeated() => new PbList<ModifyAckDeadlineRequest>();

  String get subscription => getField(1);
  void set subscription(String v) { setField(1, v); }
  bool hasSubscription() => hasField(1);
  void clearSubscription() => clearField(1);

  String get ackId => getField(2);
  void set ackId(String v) { setField(2, v); }
  bool hasAckId() => hasField(2);
  void clearAckId() => clearField(2);

  List<String> get ackIds => getField(4);

  int get ackDeadlineSeconds => getField(3);
  void set ackDeadlineSeconds(int v) { setField(3, v); }
  bool hasAckDeadlineSeconds() => hasField(3);
  void clearAckDeadlineSeconds() => clearField(3);
}

class AcknowledgeRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('AcknowledgeRequest')
    ..a(1, 'subscription', GeneratedMessage.OS)
    ..p(2, 'ackIds', GeneratedMessage.PS)
    ..hasRequiredFields = false
  ;

  AcknowledgeRequest() : super();
  AcknowledgeRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  AcknowledgeRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  AcknowledgeRequest clone() => new AcknowledgeRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static AcknowledgeRequest create() => new AcknowledgeRequest();
  static PbList<AcknowledgeRequest> createRepeated() => new PbList<AcknowledgeRequest>();

  String get subscription => getField(1);
  void set subscription(String v) { setField(1, v); }
  bool hasSubscription() => hasField(1);
  void clearSubscription() => clearField(1);

  List<String> get ackIds => getField(2);
}

class ProcessPushMessageRequest extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ProcessPushMessageRequest')
    ..a(1, 'subscription', GeneratedMessage.OS)
    ..a(2, 'ackId', GeneratedMessage.OS)
    ..a(3, 'message', GeneratedMessage.OM, PubsubMessage.create, PubsubMessage.create)
    ..hasRequiredFields = false
  ;

  ProcessPushMessageRequest() : super();
  ProcessPushMessageRequest.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ProcessPushMessageRequest.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ProcessPushMessageRequest clone() => new ProcessPushMessageRequest()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ProcessPushMessageRequest create() => new ProcessPushMessageRequest();
  static PbList<ProcessPushMessageRequest> createRepeated() => new PbList<ProcessPushMessageRequest>();

  String get subscription => getField(1);
  void set subscription(String v) { setField(1, v); }
  bool hasSubscription() => hasField(1);
  void clearSubscription() => clearField(1);

  String get ackId => getField(2);
  void set ackId(String v) { setField(2, v); }
  bool hasAckId() => hasField(2);
  void clearAckId() => clearField(2);

  PubsubMessage get message => getField(3);
  void set message(PubsubMessage v) { setField(3, v); }
  bool hasMessage() => hasField(3);
  void clearMessage() => clearField(3);
}

class ProcessPushMessageResponse extends GeneratedMessage {
  static final BuilderInfo _i = new BuilderInfo('ProcessPushMessageResponse')
    ..a(1, 'acknowledgeExplicitly', GeneratedMessage.OB)
    ..hasRequiredFields = false
  ;

  ProcessPushMessageResponse() : super();
  ProcessPushMessageResponse.fromBuffer(List<int> i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ProcessPushMessageResponse.fromJson(String i, [ExtensionRegistry r = ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ProcessPushMessageResponse clone() => new ProcessPushMessageResponse()..mergeFromMessage(this);
  BuilderInfo get info_ => _i;
  static ProcessPushMessageResponse create() => new ProcessPushMessageResponse();
  static PbList<ProcessPushMessageResponse> createRepeated() => new PbList<ProcessPushMessageResponse>();

  bool get acknowledgeExplicitly => getField(1);
  void set acknowledgeExplicitly(bool v) { setField(1, v); }
  bool hasAcknowledgeExplicitly() => hasField(1);
  void clearAcknowledgeExplicitly() => clearField(1);
}

class PublisherApi {
  RpcClient _client;
  PublisherApi(this._client);

  Future<Topic> createTopic(ClientContext ctx, Topic request) async {
    var emptyResponse = new Topic();
    var result = await _client.invoke(ctx, 'Publisher', 'CreateTopic', request, emptyResponse);
    return result;
  }
  Future<PublishResponse> publish(ClientContext ctx, PublishRequest request) async {
    var emptyResponse = new PublishResponse();
    var result = await _client.invoke(ctx, 'Publisher', 'Publish', request, emptyResponse);
    return result;
  }
  Future<Topic> getTopic(ClientContext ctx, GetTopicRequest request) async {
    var emptyResponse = new Topic();
    var result = await _client.invoke(ctx, 'Publisher', 'GetTopic', request, emptyResponse);
    return result;
  }
  Future<ListTopicsResponse> listTopics(ClientContext ctx, ListTopicsRequest request) async {
    var emptyResponse = new ListTopicsResponse();
    var result = await _client.invoke(ctx, 'Publisher', 'ListTopics', request, emptyResponse);
    return result;
  }
  Future<ListTopicSubscriptionsResponse> listTopicSubscriptions(ClientContext ctx, ListTopicSubscriptionsRequest request) async {
    var emptyResponse = new ListTopicSubscriptionsResponse();
    var result = await _client.invoke(ctx, 'Publisher', 'ListTopicSubscriptions', request, emptyResponse);
    return result;
  }
  Future<Empty> deleteTopic(ClientContext ctx, DeleteTopicRequest request) async {
    var emptyResponse = new Empty();
    var result = await _client.invoke(ctx, 'Publisher', 'DeleteTopic', request, emptyResponse);
    return result;
  }
}

class SubscriberApi {
  RpcClient _client;
  SubscriberApi(this._client);

  Future<Subscription> createSubscription(ClientContext ctx, Subscription request) async {
    var emptyResponse = new Subscription();
    var result = await _client.invoke(ctx, 'Subscriber', 'CreateSubscription', request, emptyResponse);
    return result;
  }
  Future<Subscription> getSubscription(ClientContext ctx, GetSubscriptionRequest request) async {
    var emptyResponse = new Subscription();
    var result = await _client.invoke(ctx, 'Subscriber', 'GetSubscription', request, emptyResponse);
    return result;
  }
  Future<ListSubscriptionsResponse> listSubscriptions(ClientContext ctx, ListSubscriptionsRequest request) async {
    var emptyResponse = new ListSubscriptionsResponse();
    var result = await _client.invoke(ctx, 'Subscriber', 'ListSubscriptions', request, emptyResponse);
    return result;
  }
  Future<Empty> deleteSubscription(ClientContext ctx, DeleteSubscriptionRequest request) async {
    var emptyResponse = new Empty();
    var result = await _client.invoke(ctx, 'Subscriber', 'DeleteSubscription', request, emptyResponse);
    return result;
  }
  Future<Empty> modifyAckDeadline(ClientContext ctx, ModifyAckDeadlineRequest request) async {
    var emptyResponse = new Empty();
    var result = await _client.invoke(ctx, 'Subscriber', 'ModifyAckDeadline', request, emptyResponse);
    return result;
  }
  Future<Empty> acknowledge(ClientContext ctx, AcknowledgeRequest request) async {
    var emptyResponse = new Empty();
    var result = await _client.invoke(ctx, 'Subscriber', 'Acknowledge', request, emptyResponse);
    return result;
  }
  Future<PullResponse> pull(ClientContext ctx, PullRequest request) async {
    var emptyResponse = new PullResponse();
    var result = await _client.invoke(ctx, 'Subscriber', 'Pull', request, emptyResponse);
    return result;
  }
  Future<Empty> modifyPushConfig(ClientContext ctx, ModifyPushConfigRequest request) async {
    var emptyResponse = new Empty();
    var result = await _client.invoke(ctx, 'Subscriber', 'ModifyPushConfig', request, emptyResponse);
    return result;
  }
}

class PushEndpointApi {
  RpcClient _client;
  PushEndpointApi(this._client);

  Future<ProcessPushMessageResponse> processPushMessage(ClientContext ctx, ProcessPushMessageRequest request) async {
    var emptyResponse = new ProcessPushMessageResponse();
    var result = await _client.invoke(ctx, 'PushEndpoint', 'ProcessPushMessage', request, emptyResponse);
    return result;
  }
}

abstract class PublisherServiceBase extends GeneratedService {
  Future<Topic> createTopic(ServerContext ctx, Topic request);
  Future<PublishResponse> publish(ServerContext ctx, PublishRequest request);
  Future<Topic> getTopic(ServerContext ctx, GetTopicRequest request);
  Future<ListTopicsResponse> listTopics(ServerContext ctx, ListTopicsRequest request);
  Future<ListTopicSubscriptionsResponse> listTopicSubscriptions(ServerContext ctx, ListTopicSubscriptionsRequest request);
  Future<Empty> deleteTopic(ServerContext ctx, DeleteTopicRequest request);

  GeneratedMessage createRequest(String method) {
    switch (method) {
      case 'CreateTopic': return new Topic();
      case 'Publish': return new PublishRequest();
      case 'GetTopic': return new GetTopicRequest();
      case 'ListTopics': return new ListTopicsRequest();
      case 'ListTopicSubscriptions': return new ListTopicSubscriptionsRequest();
      case 'DeleteTopic': return new DeleteTopicRequest();
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Future<GeneratedMessage> handleCall(ServerContext ctx, String method, GeneratedMessage request) async {
    switch (method) {
      case 'CreateTopic': return await createTopic(ctx, request);
      case 'Publish': return await publish(ctx, request);
      case 'GetTopic': return await getTopic(ctx, request);
      case 'ListTopics': return await listTopics(ctx, request);
      case 'ListTopicSubscriptions': return await listTopicSubscriptions(ctx, request);
      case 'DeleteTopic': return await deleteTopic(ctx, request);
      default: throw new ArgumentError('Unknown method: $method');
    }
  }
}

abstract class SubscriberServiceBase extends GeneratedService {
  Future<Subscription> createSubscription(ServerContext ctx, Subscription request);
  Future<Subscription> getSubscription(ServerContext ctx, GetSubscriptionRequest request);
  Future<ListSubscriptionsResponse> listSubscriptions(ServerContext ctx, ListSubscriptionsRequest request);
  Future<Empty> deleteSubscription(ServerContext ctx, DeleteSubscriptionRequest request);
  Future<Empty> modifyAckDeadline(ServerContext ctx, ModifyAckDeadlineRequest request);
  Future<Empty> acknowledge(ServerContext ctx, AcknowledgeRequest request);
  Future<PullResponse> pull(ServerContext ctx, PullRequest request);
  Future<Empty> modifyPushConfig(ServerContext ctx, ModifyPushConfigRequest request);

  GeneratedMessage createRequest(String method) {
    switch (method) {
      case 'CreateSubscription': return new Subscription();
      case 'GetSubscription': return new GetSubscriptionRequest();
      case 'ListSubscriptions': return new ListSubscriptionsRequest();
      case 'DeleteSubscription': return new DeleteSubscriptionRequest();
      case 'ModifyAckDeadline': return new ModifyAckDeadlineRequest();
      case 'Acknowledge': return new AcknowledgeRequest();
      case 'Pull': return new PullRequest();
      case 'ModifyPushConfig': return new ModifyPushConfigRequest();
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Future<GeneratedMessage> handleCall(ServerContext ctx, String method, GeneratedMessage request) async {
    switch (method) {
      case 'CreateSubscription': return await createSubscription(ctx, request);
      case 'GetSubscription': return await getSubscription(ctx, request);
      case 'ListSubscriptions': return await listSubscriptions(ctx, request);
      case 'DeleteSubscription': return await deleteSubscription(ctx, request);
      case 'ModifyAckDeadline': return await modifyAckDeadline(ctx, request);
      case 'Acknowledge': return await acknowledge(ctx, request);
      case 'Pull': return await pull(ctx, request);
      case 'ModifyPushConfig': return await modifyPushConfig(ctx, request);
      default: throw new ArgumentError('Unknown method: $method');
    }
  }
}

abstract class PushEndpointServiceBase extends GeneratedService {
  Future<ProcessPushMessageResponse> processPushMessage(ServerContext ctx, ProcessPushMessageRequest request);

  GeneratedMessage createRequest(String method) {
    switch (method) {
      case 'ProcessPushMessage': return new ProcessPushMessageRequest();
      default: throw new ArgumentError('Unknown method: $method');
    }
  }

  Future<GeneratedMessage> handleCall(ServerContext ctx, String method, GeneratedMessage request) async {
    switch (method) {
      case 'ProcessPushMessage': return await processPushMessage(ctx, request);
      default: throw new ArgumentError('Unknown method: $method');
    }
  }
}

