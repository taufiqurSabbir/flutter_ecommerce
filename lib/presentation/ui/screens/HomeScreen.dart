import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:flutter_ecommerce/presentation/ui/widgets/HomeSlider.dart';
import 'package:get/get.dart';
import '../utility/image_asset.dart';
import '../widgets/Body_text.dart';
import '../widgets/CatagoryWidget.dart';
import '../widgets/ProductWidget.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/home_search_bar.dart';
import 'category_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List homeCategory = [
    "Electronics", "Food", "Fashion", "Furniture"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const home_app_bar(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5),
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
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeCategory.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, index){
                  return  CatagoryWidget(
                    name: '${homeCategory[index]}',
                    image: ImageAsset.electronics_icon,
                    cataColor: AppColors.primarycolor, onTap: () {Get.to(CategoryProducts(cataName: 'Electronics',));  },
                  );
                },
              ),
            ),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BodyTitle(title_text: 'Popular', TextColor: Colors.black87, textsize: 20,),
                TextButton(
                  onPressed: (){},
                  child: Text("See All",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17
                    ),
                  ),
                )
              ],
            ),
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

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BodyTitle(title_text: 'Special', TextColor: Colors.black87, textsize: 20,),
                TextButton(
                  onPressed: (){},
                  child: Text("See All",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
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


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BodyTitle(title_text: 'New', TextColor: Colors.black87, textsize: 20,),
                TextButton(
                  onPressed: (){},
                  child: Text("See All",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
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



