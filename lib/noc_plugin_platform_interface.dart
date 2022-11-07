import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'noc_plugin_method_channel.dart';

abstract class NocPluginPlatform extends PlatformInterface {
  /// Constructs a NocPluginPlatform.
  NocPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static NocPluginPlatform _instance = MethodChannelNocPlugin();

  /// The default instance of [NocPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelNocPlugin].
  static NocPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NocPluginPlatform] when
  /// they register themselves.
  static set instance(NocPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
