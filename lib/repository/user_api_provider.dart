import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';

import 'package:blink_like/model/user_model.dart';

class UserApiProvider {
  Client client = Client();
  final _baseUrl = "https://restdev.blink.bio:443";

  Future<UserModel> requestLogin() async {
    print("entered");

    final response = await client.post(
      "$_baseUrl/api/v1/auth/login",
      body: jsonEncode(
        {
          'phoneNumber': '01097701782',
          'pinCode': '1234',
        },
      ),
      headers: {
        'Content-Type': 'application/json'
      },
    );

    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return UserModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
