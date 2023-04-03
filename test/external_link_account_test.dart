import 'package:external_link_account/messages.g.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_api.g.dart';

class _MockExternalLinkAccountTest implements TestExternalLinkAccountApi {
  @override
  Future<ResponseResult> open() async {
    return ResponseResult(state: ResultState.success, message: 'Test message');
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late _MockExternalLinkAccountTest api;
  setUp(() {
    api = _MockExternalLinkAccountTest();
    TestExternalLinkAccountApi.setup(api);
  });

  test('openExternalLink', () async {
    final result = await api.open();
    expect(result.state == ResultState.success, isTrue);
  });
}
