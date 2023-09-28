import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'saveeye_esp_ble_prov_platform_interface.dart';

/// An implementation of [SaveeyeEspBleProvPlatform] that uses method channels.
class MethodChannelSaveeyeEspBleProv extends SaveeyeEspBleProvPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('saveeye_esp_ble_prov');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
