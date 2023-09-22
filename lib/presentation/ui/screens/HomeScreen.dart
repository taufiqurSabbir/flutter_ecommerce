import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:flutter_ecommerce/presentation/ui/widgets/HomeSlider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utility/circularIconButton.dart';
import '../utility/image_asset.dart';
import '../widgets/CatagoryWidget.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/home_search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
          title: home_app_bar(),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            home_search_bar(),
            SizedBox(height: 10,),
            HomeSlider(),
            Row(
              children: [
                CatagoryWidget()
              ],
            )

          ],
        ),
      ),
    );
  }
}





