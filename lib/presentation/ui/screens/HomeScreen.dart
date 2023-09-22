import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:flutter_ecommerce/presentation/ui/widgets/HomeSlider.dart';

import '../utility/image_asset.dart';
import '../widgets/Body_text.dart';
import '../widgets/CatagoryWidget.dart';
import '../widgets/ProductWidget.dart';
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
        title: const home_app_bar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const home_search_bar(),
            const SizedBox(
              height: 10,
            ),
            const HomeSlider(),
            BodyTitle(title_text: 'All Categories', TextColor: Colors.black87, textsize: 20,),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CatagoryWidget(
                    name: 'Electronics',
                    image: ImmageAsset.electronics_icon,
                    cataColor: AppColors.primarycolor,
                  ),
                  CatagoryWidget(
                    name: 'Food',
                    image: ImmageAsset.food_icon,
                    cataColor: AppColors.primarycolor,
                  ),
                  CatagoryWidget(
                    name: 'Fashion',
                    image: ImmageAsset.fashion_icon,
                    cataColor: AppColors.primarycolor,
                  ),
                  CatagoryWidget(
                    name: 'Furniture',
                    image: ImmageAsset.bed_icon,
                    cataColor: AppColors.primarycolor,
                  ),
                  CatagoryWidget(
                    name: 'Furniture',
                    image: ImmageAsset.bed_icon,
                    cataColor: AppColors.primarycolor,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),

            BodyTitle(title_text: 'Popular', TextColor: Colors.black87, textsize: 20,),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductWidget(),
                  ProductWidget(),
                  ProductWidget(),
                  ProductWidget(),
                ],
              ),
            ),

            SizedBox(height: 20,),

            BodyTitle(title_text: 'Special', TextColor: Colors.black87, textsize: 20,),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductWidget(),
                  ProductWidget(),
                  ProductWidget(),
                  ProductWidget(),
                ],
              ),
            ),

            SizedBox(height: 20,),

            BodyTitle(title_text: 'New', TextColor: Colors.black87, textsize: 20,),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductWidget(),
                  ProductWidget(),
                  ProductWidget(),
                  ProductWidget(),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}



