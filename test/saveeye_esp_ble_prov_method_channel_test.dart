import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:saveeye_esp_ble_prov/saveeye_esp_ble_prov_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelSaveeyeEspBleProv platform = MethodChannelSaveeyeEspBleProv();
  const MethodChannel channel = MethodChannel('saveeye_esp_ble_prov');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
