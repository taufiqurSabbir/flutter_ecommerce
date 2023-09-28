import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/HomeScreen.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/auth/email_verification.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utility/image_asset.dart';
import 'buttom_nav.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {


  var token;
  void gotonextScreen() {
    Future.delayed(Duration(seconds: 2)).then((value) async{
      SharedPreferences _pref = await SharedPreferences.getInstance();
      setState(() {
        token = _pref.getString("token");
      });
      if(token != null){
        Get.offAll(ButtomNav());
      }else{
        Get.offAll(Email_Varification());
      }
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gotonextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Center(
              child: SvgPicture.asset(
            ImageAsset.logosvg,
            width: 140,
          )),
          Spacer(),
          const CircularProgressIndicator(),
          SizedBox(
            height: 16,
          ),
          Text('Version 1.0.0'),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
