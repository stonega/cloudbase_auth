import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cloudbase_auth/cloudbase_auth.dart';

void main() {
  const MethodChannel channel = MethodChannel('cloudbase_auth');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  // test('getPlatformVersion', () async {
  //   expect(await CloudBaseAuth.platformVersion, '42');
  // });
}
