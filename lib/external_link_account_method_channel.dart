import 'package:external_link_account/messages.g.dart';

import 'external_link_account_platform_interface.dart';

/// An implementation of [ExternalLinkAccountPlatform] that uses Pigeon.
class PigeonExternalLinkAccount extends ExternalLinkAccountPlatform {
  final ExternalLinkAccountApi _externalLinkAccountApi =
      ExternalLinkAccountApi();

  @override
  Future<ResponseResult> open() => _externalLinkAccountApi.open();
}
