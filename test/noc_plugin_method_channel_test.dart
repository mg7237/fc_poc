import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:noc_plugin/noc_plugin_method_channel.dart';

void main() {
  MethodChannelNocPlugin platform = MethodChannelNocPlugin();
  const MethodChannel channel = MethodChannel('noc_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
