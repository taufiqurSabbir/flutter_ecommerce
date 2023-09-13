import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:get/get.dart';

import '../presentation/ui/screens/splash_screen.dart';

class craftBay extends StatelessWidget {
  const craftBay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
      theme: ThemeData(
          // primaryColor: Color(0xff07ADAE),
          primarySwatch:
              MaterialColor(AppColors.primarycolor.value, AppColors().color),
          progressIndicatorTheme: ProgressIndicatorThemeData(
              // color:  Color(0xff07ADAE)
              )),
    );
  }
}
