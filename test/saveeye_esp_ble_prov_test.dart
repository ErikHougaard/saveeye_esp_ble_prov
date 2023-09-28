import 'package:flutter_test/flutter_test.dart';
import 'package:saveeye_esp_ble_prov/saveeye_esp_ble_prov.dart';
import 'package:saveeye_esp_ble_prov/saveeye_esp_ble_prov_platform_interface.dart';
import 'package:saveeye_esp_ble_prov/saveeye_esp_ble_prov_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSaveeyeEspBleProvPlatform
    with MockPlatformInterfaceMixin
    implements SaveeyeEspBleProvPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SaveeyeEspBleProvPlatform initialPlatform = SaveeyeEspBleProvPlatform.instance;

  test('$MethodChannelSaveeyeEspBleProv is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSaveeyeEspBleProv>());
  });

  test('getPlatformVersion', () async {
    SaveeyeEspBleProv saveeyeEspBleProvPlugin = SaveeyeEspBleProv();
    MockSaveeyeEspBleProvPlatform fakePlatform = MockSaveeyeEspBleProvPlatform();
    SaveeyeEspBleProvPlatform.instance = fakePlatform;

    expect(await saveeyeEspBleProvPlugin.getPlatformVersion(), '42');
  });
}
