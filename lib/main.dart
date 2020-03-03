import 'package:flutter/material.dart';
import 'package:blink_like/main_app.dart';
import 'package:blink_like/splash_app.dart';


void main() {
  runApp(
    SplashApp(
      key: UniqueKey(),
      onInitializationComplete: () => runMainApp(),
    ),
  );
}

void runMainApp() {
  runApp(
    MainApp(),
  );
}
