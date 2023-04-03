import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/messages.g.dart',
    oneLanguage: true,
    dartTestOut: 'test/test_api.g.dart',
    swiftOut: 'ios/Classes/messages.g.swift',
  ),
)

// Valid, enums can be method parameters and fields of returned objects.
enum ResultState { success, error }

class ResponseResult {
  final ResultState state;
  final String message;

  ResponseResult(this.state, this.message);
}

/// Enables qualifying apps to link to an external website for account creation or management
@HostApi(dartHostTestHandler: 'TestExternalLinkAccountApi')
abstract class ExternalLinkAccountApi {
  /// Presents a continuation sheet that enables people to choose whether to open your app’s link to an external website for account creation or management.
  @async
  @TaskQueue(type: TaskQueueType.serialBackgroundThread)
  ResponseResult open();
}
