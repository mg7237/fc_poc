import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'noc_plugin_platform_interface.dart';

/// An implementation of [NocPluginPlatform] that uses method channels.
class MethodChannelNocPlugin extends NocPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('noc_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
