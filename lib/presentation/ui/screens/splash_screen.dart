import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/HomeScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../utility/image_asset.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {


  void gotonextScreen() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      Get.to(HomeScreen());



      // Navigator.pushAndRemoveUntil(
      //     context,
      //     MaterialPageRoute(builder: (context) => HomeScreen()),
      //     (route) => false);
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
            ImmageAsset.logosvg,
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
