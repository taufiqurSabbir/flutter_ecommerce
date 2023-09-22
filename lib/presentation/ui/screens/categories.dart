import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';

import '../utility/image_asset.dart';
import '../widgets/CatagoryWidget.dart';


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
         body: CatagoryWidget(name: 'Furniture', image: ImmageAsset.bed_icon, cataColor: AppColors.primarycolor, onTap: () {  },),
       ),
     ),
   );
  }
}

