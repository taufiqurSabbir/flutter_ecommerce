
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utility/AppColor.dart';
import '../utility/image_asset.dart';

class CatagoryWidget extends StatelessWidget {
  const CatagoryWidget({
    super.key, required this.name, required this.image, required this.cataColor, required this.onTap,
  });
  final String name;
  final String image;
  final Color cataColor;
  final VoidCallback onTap;



  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
          onTap();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.primarycolor.withOpacity(0.2),
            ),

            child: Column(
              children: [
                // Icon(Icons.shop,size: 50,color: AppColors.primarycolor,),
                SvgPicture.asset(image,colorFilter: ColorFilter.mode(cataColor,BlendMode.srcIn),

                )],
            ),
          ),
          SizedBox(height: 7,),
          Text(name,style: TextStyle(color: cataColor,fontWeight: FontWeight.w500,fontSize: 16),)
        ],
      ),
    );
  }
}
