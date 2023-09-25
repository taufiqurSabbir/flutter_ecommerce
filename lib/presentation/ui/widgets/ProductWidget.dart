import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/product_details.dart';
import '../utility/AppColor.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.to(ProductDetails());
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
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
                      child: Image.network('https://www.pngall.com/wp-content/uploads/5/Purse.png',width: 120,height: 150,),
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
                        children: [
                          SizedBox(height: 10,),
                          Center(child: Text('Ledies trendy Purse',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),)),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Spacer(),
                              Text('2700 ৳',style: TextStyle(fontSize: 20,color: AppColors.primarycolor,fontWeight: FontWeight.bold),),
                              Spacer(),
                              Icon(Icons.star,color: Colors.amber,),
                              Text('4.3',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                              Spacer(),
                              Icon(Icons.favorite,color: AppColors.primarycolor,),
                              Spacer(),
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
    );
  }
}
