import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';


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
         body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.primarycolor.withOpacity(0.2),
                ),

                child: Column(
                  children: [
                    Icon(Icons.shop,size: 50,color: AppColors.primarycolor,),

                  ],
                ),
              ),
              SizedBox(height: 7,),
              Text('Electronics',style: TextStyle(color: AppColors.primarycolor,fontWeight: FontWeight.bold,fontSize: 16),)
            ],
         ),
       ),
     ),
   );
  }
}
