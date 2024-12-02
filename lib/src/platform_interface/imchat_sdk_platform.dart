import 'dart:async';

import 'package:imchat_sdk_platform_interface/imchat_sdk_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import '../method_channel/method_channel_imchat_sdk.dart';

abstract class ImchatSdkFlutterPlatform extends PlatformInterface {
  /// Constructs a ImchatSdkFlutterPlatform.
  ImchatSdkFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static ImchatSdkFlutterPlatform _instance = MethodChannelImchatSdkFlutter();

  /// The default instance of [ImchatSdkFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelImchatSdkFlutter].
  static ImchatSdkFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ImchatSdkFlutterPlatform] when
  /// they register themselves.
  static set instance(ImchatSdkFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool> initSDK(IMInitSDKParam param) {
    throw UnimplementedError('initSDK() has not been implemented.');
  }
}
