import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/model/productModel.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:flutter_ecommerce/presentation/ui/widgets/HomeSlider.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import '../../../controller/productController.dart';
import '../../../model/singleProductModel.dart';
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

  Future<ProductModel>? getProduct;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProduct = ProductController.products();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const home_app_bar(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const home_search_bar(),
            const SizedBox(
              height: 10,
            ),
            const HomeSlider(),
            const BodyTitle(title_text: 'All Categories', TextColor: Colors.black87, textsize: 20,),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: homeCategory.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index){
                  return  CatagoryWidget(
                    name: '${homeCategory[index]}',
                    image: ImageAsset.electronics_icon,
                    cataColor: AppColors.primarycolor, onTap: () { }//Get.to(const CategoryProducts(cataName: 'Electronics',));  },
                  );
                },
              ),
            ),
            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BodyTitle(title_text: 'Popular', TextColor: Colors.black87, textsize: 20,),
                TextButton(
                  onPressed: ()=>Get.to(CategoryProducts(catName: "Popular", lable: 1)),
                  child: const Text("See All",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 250,
              child: FutureBuilder<ProductModel>(
                  future: getProduct,
                  builder: (context, snapshot) {
                  if(snapshot.connectionState == ConnectionState.waiting){
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (_, index){
                        return Shimmer.fromColors(
                          baseColor: Colors.white,
                          highlightColor: Colors.grey.shade200,
                          child: Container(width: 180, height: 250,),
                        );
                      },
                    );
                  }else if(snapshot.hasData){
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.massage!.length,
                      itemBuilder: (_, index){
                        print(snapshot.data!.massage![index].isPopular!,);
                        if(snapshot.data!.massage![index]!.isPopular == "1"){
                          return ProductWidget(
                            visible: true,
                            name: snapshot.data!.massage![index].name!,
                            price: snapshot.data!.massage![index].price!,
                            image: snapshot.data!.massage![index].image!,
                            singleProduct: snapshot.data!.massage![index],

                          );
                        }

                      },
                    );
                  }else{
                    return Center(child: Text("Something went wrong"),);
                  }
                }
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BodyTitle(title_text: 'Special', TextColor: Colors.black87, textsize: 20,),
                TextButton(
                  onPressed: ()=>Get.to(CategoryProducts(catName: "Special", lable: 2)),
                  child: const Text("See All",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 250,
              child: FutureBuilder<ProductModel>(
                  future: getProduct,
                  builder: (context, snapshot) {
                    if(snapshot.connectionState == ConnectionState.waiting){
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (_, index){
                          return Shimmer.fromColors(
                            baseColor: Colors.white,
                            highlightColor: Colors.grey.shade200,
                            child: Container(width: 180, height: 250,),
                          );
                        },
                      );
                    }else if(snapshot.hasData){
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.massage!.length,
                        itemBuilder: (_, index){
                          if(snapshot.data!.massage![index]!.isSpecial == "1"){
                            return ProductWidget(
                              visible: true,
                              name: snapshot.data!.massage![index].name!,
                              price: snapshot.data!.massage![index].price!,
                              image: snapshot.data!.massage![index].image!,
                              singleProduct: snapshot.data!.massage![index],

                            );
                          }

                        },
                      );
                    }else{
                      return Center(child: Text("Something went wrong"),);
                    }
                  }
              ),
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BodyTitle(title_text: 'New', TextColor: Colors.black87, textsize: 20,),
                TextButton(
                  onPressed: ()=>Get.to(CategoryProducts(catName: "New", lable: 3)),
                  child: const Text("See All",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 250,
              child: FutureBuilder<ProductModel>(
                  future: getProduct,
                  builder: (context, snapshot) {
                    if(snapshot.connectionState == ConnectionState.waiting){
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (_, index){
                          return Shimmer.fromColors(
                            baseColor: Colors.white,
                            highlightColor: Colors.grey.shade200,
                            child: Container(width: 180, height: 250,),
                          );
                        },
                      );
                    }else if(snapshot.hasData){
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.massage!.length,
                        itemBuilder: (_, index){
                          if(snapshot.data!.massage![index]!.isNew == "1"){
                            return ProductWidget(
                              visible: true,
                              name: snapshot.data!.massage![index].name!,
                              price: snapshot.data!.massage![index].price!,
                              image: snapshot.data!.massage![index].image!,
                              singleProduct: snapshot.data!.massage![index],
                            );
                          }

                        },
                      );
                    }else{
                      return Center(child: Text("Something went wrong"),);
                    }
                  }
              ),
            ),


          ],
        ),
      ),
    );
  }
}



