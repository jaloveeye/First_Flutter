import 'package:blink_like/model/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:blink_like/repository/repository.dart';

class UserProvider with ChangeNotifier {

  final _repository = Repository();

  UserModel _user;

  UserProvider();

  void requestUserInfo() {

    print("requestUserInfo");

    requestLogin() async {
      UserModel userModel = await _repository.requestLogin();

      this._user = userModel;

      notifyListeners();
    }
  }
}