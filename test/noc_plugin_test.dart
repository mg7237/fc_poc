import 'package:flutter_test/flutter_test.dart';
import 'package:noc_plugin/noc_plugin.dart';
import 'package:noc_plugin/noc_plugin_platform_interface.dart';
import 'package:noc_plugin/noc_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNocPluginPlatform
    with MockPlatformInterfaceMixin
    implements NocPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NocPluginPlatform initialPlatform = NocPluginPlatform.instance;

  test('$MethodChannelNocPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNocPlugin>());
  });

  test('getPlatformVersion', () async {
    NocPlugin nocPlugin = NocPlugin();
    MockNocPluginPlatform fakePlatform = MockNocPluginPlatform();
    NocPluginPlatform.instance = fakePlatform;

    expect(await nocPlugin.getPlatformVersion(), '42');
  });
}
