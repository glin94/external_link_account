import 'package:external_link_account/messages.g.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'external_link_account_method_channel.dart';

abstract class ExternalLinkAccountPlatform extends PlatformInterface {
  /// Constructs a ExternalLinkAccountPlatform.
  ExternalLinkAccountPlatform() : super(token: _token);

  static final Object _token = Object();

  static ExternalLinkAccountPlatform _instance = PigeonExternalLinkAccount();

  /// The default instance of [ExternalLinkAccountPlatform] to use.
  ///
  /// Defaults to [PigeonExternalLinkAccount].
  static ExternalLinkAccountPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ExternalLinkAccountPlatform] when
  /// they register themselves.
  static set instance(ExternalLinkAccountPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<ResponseResult> open() {
    throw UnimplementedError('open() has not been implemented.');
  }
}
