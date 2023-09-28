import 'dart:convert';

import 'package:flutter_ecommerce/presentation/ui/screens/auth/email_verification.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../appConfig.dart';

class AuthController{

  //login
  static Future login({required String phone, required String password})async{
    SharedPreferences _pref = await SharedPreferences.getInstance();

    var res = await http.post(Uri.parse(AppConfig.LOGIN),
        headers: {
          "Accept" : "application/json"
        },

        body: {
          "phone" : phone,
          "password": password
        }
      );
      var data = jsonDecode(res.body);
      print("token === ${data["data"]["token"]}");
      _pref.setString("token", data["data"]["token"]);
      return res;
  }


  //signup
  static Future signUp({
    required String phone,
    required String password,
    required String confirmPassword,
    required String city,
    required String name,
    required String shoppingAddress,
  })async{
    SharedPreferences _pref = await SharedPreferences.getInstance();
    var res = await http.post(Uri.parse(AppConfig.SIGNUP),
        headers: {
          "Accept" : "application/json"
        },

        body: {
          "phone" : phone,
          "password": password,
          "password_confirmation": confirmPassword,
          "city" : city,
          "name" : name,
          "shopping_address" : shoppingAddress
        }
    );
    var data = jsonDecode(res.body);
    print("token === ${data["data"]["token"]}");
    _pref.setString("token", data["data"]["token"]);
    return res;
  }


  //logout
  static Future logout()async{
    SharedPreferences _pref = await SharedPreferences.getInstance();
    _pref.remove("token");
    Get.offAll(Email_Varification());
  }
}