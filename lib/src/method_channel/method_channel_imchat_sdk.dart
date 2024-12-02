import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../../types/enum.dart';
import '../platform_interface/imchat_sdk_platform.dart';

/// An implementation of [ImchatSdkFlutterPlatform] that uses method channels.
class MethodChannelImchatSdkFlutter extends ImchatSdkFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('imchat_sdk_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<bool> initSDK(
      {required String identityID,
      required String sign,
      required String nickName,
      required String nickId,
      required String device,
      required String headIcon,
      required String phone,
      required String email,
      required IMLangType langType,
      required String source,
      Map<String, dynamic>? extraInfo}) async {
    Map param = {};
    bool success = await methodChannel.invokeMethod('initSDK', param);
    return success;
  }
}
