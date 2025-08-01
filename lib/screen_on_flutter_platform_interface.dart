import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'screen_on_flutter_method_channel.dart';

abstract class ScreenOnFlutterPlatform extends PlatformInterface {
  ScreenOnFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static ScreenOnFlutterPlatform _instance = MethodChannelScreenOnFlutter();

  static ScreenOnFlutterPlatform get instance => _instance;

  static set instance(ScreenOnFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> startService() {
    throw UnimplementedError('startService() has not been implemented.');
  }

  Future<void> endService() {
    throw UnimplementedError('endService() has not been implemented.');
  }
}
