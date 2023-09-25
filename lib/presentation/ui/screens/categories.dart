import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../utility/image_asset.dart';
import '../widgets/CatagoryWidget.dart';
import 'category_product.dart';


class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Container(
       color: AppColors.primarycolor,
       child: Scaffold(
           appBar: AppBar(
             title: Text('Categories',style: TextStyle(color: Colors.black),),
             leading: BackButton(
               color: Colors.black,
             ),
             backgroundColor: Colors.white,
             elevation: 2,
           ),
         body: Column(
           children: [
             SizedBox(height: 3.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 CatagoryWidget(
                   name: 'Electronics',
                   image: ImageAsset.electronics_icon,
                   cataColor: AppColors.primarycolor, onTap: () {Get.to(CategoryProducts(cataName: 'Electronics',));  },
                 ),
                 CatagoryWidget(
                     name: 'Food',
                     image: ImageAsset.food_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Food',));  }
                 ),
                 CatagoryWidget(
                     name: 'Fashion',
                     image: ImageAsset.fashion_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Fashion',));  }
                 ),
                 CatagoryWidget(
                     name: 'Furniture',
                     image: ImageAsset.bed_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Furniture',));  }
                 ),
               ],
             ),
             SizedBox(height: 2.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 CatagoryWidget(
                   name: 'Electronics',
                   image: ImageAsset.electronics_icon,
                   cataColor: AppColors.primarycolor, onTap: () {Get.to(CategoryProducts(cataName: 'Electronics',));  },
                 ),
                 CatagoryWidget(
                     name: 'Food',
                     image: ImageAsset.food_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Food',));  }
                 ),
                 CatagoryWidget(
                     name: 'Fashion',
                     image: ImageAsset.fashion_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Fashion',));  }
                 ),
                 CatagoryWidget(
                     name: 'Furniture',
                     image: ImageAsset.bed_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Furniture',));  }
                 ),
               ],
             ),
             SizedBox(height: 2.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 CatagoryWidget(
                   name: 'Electronics',
                   image: ImageAsset.electronics_icon,
                   cataColor: AppColors.primarycolor, onTap: () {Get.to(CategoryProducts(cataName: 'Electronics',));  },
                 ),
                 CatagoryWidget(
                     name: 'Food',
                     image: ImageAsset.food_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Food',));  }
                 ),
                 CatagoryWidget(
                     name: 'Fashion',
                     image: ImageAsset.fashion_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Fashion',));  }
                 ),
                 CatagoryWidget(
                     name: 'Furniture',
                     image: ImageAsset.bed_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Furniture',));  }
                 ),
               ],
             ),
             SizedBox(height: 2.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 CatagoryWidget(
                   name: 'Electronics',
                   image: ImageAsset.electronics_icon,
                   cataColor: AppColors.primarycolor, onTap: () {Get.to(CategoryProducts(cataName: 'Electronics',));  },
                 ),
                 CatagoryWidget(
                     name: 'Food',
                     image: ImageAsset.food_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Food',));  }
                 ),
                 CatagoryWidget(
                     name: 'Fashion',
                     image: ImageAsset.fashion_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Fashion',));  }
                 ),
                 CatagoryWidget(
                     name: 'Furniture',
                     image: ImageAsset.bed_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Furniture',));  }
                 ),
               ],
             ),
             SizedBox(height: 2.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 CatagoryWidget(
                   name: 'Electronics',
                   image: ImageAsset.electronics_icon,
                   cataColor: AppColors.primarycolor, onTap: () {Get.to(CategoryProducts(cataName: 'Electronics',));  },
                 ),
                 CatagoryWidget(
                     name: 'Food',
                     image: ImageAsset.food_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Food',));  }
                 ),
                 CatagoryWidget(
                     name: 'Fashion',
                     image: ImageAsset.fashion_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Fashion',));  }
                 ),
                 CatagoryWidget(
                     name: 'Furniture',
                     image: ImageAsset.bed_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Furniture',));  }
                 ),
               ],
             ),
             SizedBox(height: 2.h,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 CatagoryWidget(
                   name: 'Electronics',
                   image: ImageAsset.electronics_icon,
                   cataColor: AppColors.primarycolor, onTap: () {Get.to(CategoryProducts(cataName: 'Electronics',));  },
                 ),
                 CatagoryWidget(
                     name: 'Food',
                     image: ImageAsset.food_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Food',));  }
                 ),
                 CatagoryWidget(
                     name: 'Fashion',
                     image: ImageAsset.fashion_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Fashion',));  }
                 ),
                 CatagoryWidget(
                     name: 'Furniture',
                     image: ImageAsset.bed_icon,
                     cataColor: AppColors.primarycolor,
                     onTap: () {Get.to(CategoryProducts(cataName: 'Furniture',));  }
                 ),
               ],
             ),
           ],
         )
       ),
     ),
   );
  }
}

