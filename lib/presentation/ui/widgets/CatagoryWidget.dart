import 'package:flutter/material.dart';

import '../utility/AppColor.dart';

class CatagoryWidget extends StatelessWidget {
  const CatagoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
