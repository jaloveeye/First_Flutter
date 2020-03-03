import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blink_like/main.dart';

class SplashApp extends StatefulWidget {

  final VoidCallback onInitializationComplete;
  final bool initializationShouldFail;

  const SplashApp({
    Key key,
    @required this.onInitializationComplete,
    this.initializationShouldFail = false,
  }) : super(key: key);


  @override
  _SplashAppState createState() => _SplashAppState();
}

class _SplashAppState extends State<SplashApp> {

  bool _hasError = false;

  final int delayTime = 3000;

  @override
  void initState() {
    super.initState();

    if (widget.initializationShouldFail) {
      fakeLoadingAndError();
    } else {
      fakeLoadingAndSuccess();
    }
  }

  Future<void> fakeLoadingAndError() async {
    Future.delayed(
      Duration(milliseconds: delayTime),
        () {
          setState(() {
            _hasError = true;
          });
        }
    );
  }

  Future<void> fakeLoadingAndSuccess() async {
      Future.delayed(
        Duration(milliseconds: delayTime),
          () => widget.onInitializationComplete(),
      );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _buildBody(),
    );
  }


  Widget _buildBody() {
    if (_hasError) {
      return Center(
        child: RaisedButton(
          onPressed: () => main(),
          child: Text('retry'),
        ),
      );
    }

    return Container(
      color: Colors.deepOrange,
      child: Stack(
        children: <Widget> [
          Center(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage ('images/splash_gif.gif'),
                  fit: BoxFit.cover
                )
              ),
            ),
          ),
          Center(
            child: CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}