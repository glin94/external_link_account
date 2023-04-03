# external_link_account

Flutter iOS plugin for ExternalLinkAccount API

## Usage

Add `external_link_account` as a dependency in your pubspec.yaml file.

### Example

```dart
// Import package
import 'package:external_link_account/external_link_account.dart';
// Instantiate it
final externalLinkAccount = ExternalLinkAccount();

/// Open
final result = await _externalLinkAccountPlugin.open();
exte
// Access current battery level
print(await   battery.batteryLevel);
// Be informed when the state (full, charging, discharging) changes
battery.onBatteryStateChanged.listen((BatteryState state) {
  // Do something with new state
});
```

## Learn more

- [API Documentation](https://pub.dev/documentation/battery_plus/latest/battery_plus/battery_plus-library.html)

