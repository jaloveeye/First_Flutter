import 'dart:developer' as developer;

class LogUtil {
  void printLog(String msg) {
    developer.log(msg, name: 'blink like flutter');
    print(msg);
  }
}