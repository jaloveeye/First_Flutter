import 'package:blink_like/model/user_model.dart';
import 'package:blink_like/repository/user_api_provider.dart';

class Repository {
    final userApiProvider = UserApiProvider();

    Future<UserModel> requestLogin() => userApiProvider.requestLogin();
}