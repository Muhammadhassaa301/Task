import 'dart:convert';

import 'package:paymentmethod/models/Forgot_password.dart';
import 'package:paymentmethod/models/login.dart';
import 'package:paymentmethod/models/register.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ServiceApi {
  Future<List<RegisterModel>?> registerServicePost(
    String name,
    String email,
    String password,

    //  bool value

    // String id
  ) async {
    var url = Uri.parse("http://127.0.0.1:8000/api/register");
    var register = {
      "name": name,
      "email": email,
      "password": password,
    };

    var body = json.encode(register);
    print(body);
    var response = await http.post(
      url,
      body: register,
    );

    print(response.body);
    return null;
  }

  Future<List<LoginModel>?> login(
    String email,
    String password,

    //  bool value

    // String id
  ) async {
    var url = Uri.parse("http://127.0.0.1:8000/api/login");
    var register = {
      "email": email,
      "password": password,
    };
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    try {
      var response = await http.post(
        url,
        body: register,
      );
      if (response.statusCode == 200) {
        final resData = json.decode(response.body);
        print(resData);
        await sharedPreferences.setString('token', resData['token']);

        final sharedToken = sharedPreferences.getString('token');

        print(sharedToken);
      } else {
        print(response.body);
      }
    } catch (e) {
      throw Exception(e.toString());
    }

    return null;
  }

  Future<List<ForgotPasswordModel>?> forgotPassword(
    String email,

    //  bool value

    // String id
  ) async {
    var url = Uri.parse("http://127.0.0.1:8000/api/forgot-password");
    var register = {
      "email": email,
    };

    var body = json.encode(register);
    print(body);
    var response = await http.post(
      url,
      body: register,
    );

    print(response.body);
    return null;
  }
}
