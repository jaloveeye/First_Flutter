import 'package:blink_like/model/user_model.dart';
import 'package:blink_like/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class UserBloc {
  final _repository = Repository();
  final _userFetcher = PublishSubject<UserModel>();

  Observable<UserModel> get userInfo => _userFetcher.stream;

  requestLogin() async {
    UserModel userModel = await _repository.requestLogin();
    _userFetcher.sink.add(userModel);
  }

  dispose() {
    _userFetcher.close();
  }
}

final bloc = UserBloc();