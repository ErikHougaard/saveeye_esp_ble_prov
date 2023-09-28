import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'saveeye_esp_ble_prov_method_channel.dart';

abstract class SaveeyeEspBleProvPlatform extends PlatformInterface {
  /// Constructs a SaveeyeEspBleProvPlatform.
  SaveeyeEspBleProvPlatform() : super(token: _token);

  static final Object _token = Object();

  static SaveeyeEspBleProvPlatform _instance = MethodChannelSaveeyeEspBleProv();

  /// The default instance of [SaveeyeEspBleProvPlatform] to use.
  ///
  /// Defaults to [MethodChannelSaveeyeEspBleProv].
  static SaveeyeEspBleProvPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SaveeyeEspBleProvPlatform] when
  /// they register themselves.
  static set instance(SaveeyeEspBleProvPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
