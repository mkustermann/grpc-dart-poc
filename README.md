# A proof-of-concept for making a gRPC client in dart using package:http2

This repository contains a hackisch implementation of a gRPC client in Dart. An
example on how to use it can be seen under `example/pubsub.dart`.

**Please Note** The `example/pubsub.dart` example needs to be modified to
  * point to a json service account file on disc
  * contain the name of a google cloud project (which has the pub/sub API
    enabled)
