import 'package:blink_like/util/LogUtil.dart';

class UserModel {

  String _name;
  int _age;
  String _phoneNumber;
  String _email;
  String _gender;
  String _accessToken;

  UserModel.fromJson(Map<String, dynamic> parsedJson) {
    LogUtil().printLog(parsedJson['resultCode'].toString());

    if (parsedJson['resultCode'] == 1000) {
      LogUtil().printLog(
          parsedJson['resultData']['userInfo']['name'].toString());

      _name = parsedJson['resultData']['userInfo']['name'];
      _age = parsedJson['resultData']['userInfo']['age'];
      _phoneNumber = parsedJson['resultData']['userInfo']['phoneNumber'];
      _email = parsedJson['resultData']['userInfo']['email'];
      _gender = parsedJson['resultData']['userInfo']['gender'];
      _accessToken = parsedJson['resultData']['userToken']['accessToken'];
    }
  }

  String get name => _name;

  int get age => _age;

  String get phoneNumber => _phoneNumber;

  String get email => _email;

  String get gender => _gender;

  String get accessToken => _accessToken;
}