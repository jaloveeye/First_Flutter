import 'package:blink_like/home_page.dart';
import 'package:blink_like/provider/UserProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Splash Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            builder: (_) => UserProvider(),
          )
        ],
        child: HomePage(title: 'Flutter Splash Demo Home Page'),
      ),
    );
  }
}