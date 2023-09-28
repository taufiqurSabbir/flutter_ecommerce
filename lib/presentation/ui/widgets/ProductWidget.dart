import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/appConfig.dart';
import 'package:flutter_ecommerce/model/productModel.dart';
import 'package:get/get.dart';
import '../../../model/singleProductModel.dart';
import '../screens/product_details.dart';
import '../utility/AppColor.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key, required this.name, required this.price, required this.image, this.visible = false, required this.singleProduct,
  });

  final String name;
  final String price;
  final String image;
  final bool visible;
  final Massage singleProduct;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(ProductDetails(singleProductModel: singleProduct,));
      },
      child: Visibility(
        visible: visible,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 230,
                width: 180,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12.withOpacity(0.01),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3)
                      ),
                    ],
                    color: AppColors.primarycolor.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  children: [
                    Container(
                      height: 140,
                      width: 180,
                      color: Colors.transparent,
                      child: Center(
                        child: CachedNetworkImage(
                          imageUrl: "${AppConfig.PRODUCT_IMAGE_URL}${image}",
                          height: 150, width: 120,
                          progressIndicatorBuilder: (context, url, downloadProgress) =>
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: CircularProgressIndicator(value: downloadProgress.progress),
                              ),
                          errorWidget: (context, url, error) => Icon(Icons.error),
                        ),
                      ),
                    ),

                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.zero,topRight:Radius.zero,bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20) )
                      ),
                      height: 90,
                      width: 180,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 10,),
                            Text('$name',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('$price ৳',style: TextStyle(fontSize: 18,color: AppColors.primarycolor,fontWeight: FontWeight.bold),),

                                Icon(Icons.favorite_border,color: AppColors.primarycolor,),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ),

                  ],
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
