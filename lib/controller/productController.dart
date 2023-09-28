import 'dart:convert';

import 'package:flutter_ecommerce/appConfig.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../model/productModel.dart';

class ProductController{

  //get all product
  static Future<ProductModel> products()async{
    SharedPreferences _prefs = await SharedPreferences.getInstance();
    var token= await _prefs.getString("token");
    var res = await http.get(Uri.parse(AppConfig.PRODUCT),
      headers: {
        "Authorization" : "Bearer $token",
        "Accept" : "application/json"
      },
    );
    print("status  === ${res.statusCode}");
    print("status  === ${res.body}");
    return ProductModel.fromJson(jsonDecode(res.body));
  }

}