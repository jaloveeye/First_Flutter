import 'package:blink_like/provider/UserProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:blink_like/main.dart';
import 'package:blink_like/bloc/user_bloc.dart';

import 'package:blink_like/model/user_model.dart';

import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {

  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();

//    bloc.requestLogin();
  }

  @override
  void dispose() {
//    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final UserProvider userInfo = Provider.of<UserProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//              StreamBuilder(
//                stream: bloc.userInfo,
//                builder: (context, AsyncSnapshot<UserModel> snapshot) {
//                  if (snapshot.hasData) {
//                      return Text(snapshot.data.name);
//                  } else if (snapshot.hasError) {
//                    return Text(snapshot.error.toString());
//                  }
//
//                  return Center(child: CircularProgressIndicator());
//                },
//              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // just execute the main function again will trigger a restart
//          main();
          print("pressd");
          () => userInfo.requestUserInfo();
        },
        tooltip: 'Increment',
        child: Icon(Icons.refresh),
      ),
    );
  }
}