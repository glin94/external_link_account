# external_link_account

Flutter iOS plugin for ExternalLinkAccount API

This functionality is only available to apps with the [com.apple.developer.storekit.external-link.account](https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_developer_storekit_external-link_account) entitlement.

For more information, see [Distributing “reader” apps with a link to your website](https://developer.apple.com/support/reader-apps/).

## Usage

Add `external_link_account` as a dependency in your pubspec.yaml file.

### Example

```dart
// Import package
import 'package:external_link_account/external_link_account.dart';

// Presents a continuation sheet
await ExternalLinkAccount.instance.open();


```

## Learn more

- [Swift API Documentation](https://developer.apple.com/documentation/storekit/externallinkaccount)
