// pigeons/messages.dart
import 'package:pigeon/pigeon.dart';

// 定义数据模型
class IMInitSDKParam {
  String identityID;
  String sign;
  String nickName;
  String nickId;
  String device;
  String headIcon;
  String phone;
  String email;
  int langType;
  String source;
  Map<String?, String?>? extraInfo;
  IMInitSDKParam(
      {required this.identityID,
      required this.sign,
      required this.nickName,
      required this.nickId,
      required this.device,
      required this.headIcon,
      required this.phone,
      required this.email,
      required this.langType,
      required this.source,
      this.extraInfo});
}

// define API interface
@HostApi()
abstract class IMPluginApi {
  String getPlatformVersion();
  // IMInitSDKParam getUserInfo();
  // bool test(IMInitSDKParam param);
  // @async
  bool initSDK(IMInitSDKParam param);
}

// // platform to Flutter callback
// @FlutterApi()
// abstract class IMPluginApiCallback {
//   void onEvent(String event);
//   void onUserInfoChanged(IMInitSDKParam user);
// }
