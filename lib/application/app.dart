import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../presentation/ui/screens/splash_screen.dart';

class craftBay extends StatelessWidget {
  const craftBay({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Sizer(
        builder: (context, orientation, deviceType) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: Splash_Screen(),
            theme: ThemeData(
              // primaryColor: Color(0xff07ADAE),
                primarySwatch:
                MaterialColor(AppColors.primarycolor.value, AppColors().color),
                progressIndicatorTheme: ProgressIndicatorThemeData(
                  // color:  Color(0xff07ADAE)
                ),
                elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600, letterSpacing: 0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                inputDecorationTheme: InputDecorationTheme(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primarycolor)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primarycolor)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primarycolor)),
                )
            ),
          );
        }
    );



  }
}
