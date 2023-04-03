import 'package:external_link_account/messages.g.dart';

import 'external_link_account_platform_interface.dart';
/// 
class ExternalLinkAccount {
  /// Presents a continuation sheet that enables people to choose whether to open your app’s link to an external website for account creation or management.
  Future<ResponseResult> open() => ExternalLinkAccountPlatform.instance.open();
}
