import 'package:external_link_account/messages.g.dart';

import 'external_link_account_platform_interface.dart';

/// Plugin to open link to an external website for account creation or management
class ExternalLinkAccount {
  ExternalLinkAccount._privateConstructor();

  static final ExternalLinkAccount instance =
      ExternalLinkAccount._privateConstructor();

  /// Presents a continuation sheet that enables people to choose whether to open your app’s link to an external website for account creation or management.
  Future<ResponseResult> open() => ExternalLinkAccountPlatform.instance.open();
}
