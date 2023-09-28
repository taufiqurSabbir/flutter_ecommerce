import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/profile.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../utility/circularIconButton.dart';
import '../utility/image_asset.dart';

class home_app_bar extends StatelessWidget {
  const home_app_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(ImageAsset.navlogo,fit:BoxFit.cover,width: 170,),
        Spacer(),
        circularIconButton(circleColor: Colors.grey, circleSize:15 , icon_name: Icons.person, icon_color: Colors.black12, icon_size: 25, onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile())),),
        SizedBox(width: 12,),
        circularIconButton(circleColor: Colors.grey, circleSize:15 , icon_name: Icons.add_ic_call_outlined, icon_color: Colors.black12, icon_size: 25, onTap: () {  },),
        SizedBox(width: 12,),
        circularIconButton(circleColor: Colors.grey, circleSize:15 , icon_name: Icons.notifications_active_outlined, icon_color: Colors.black12, icon_size: 25, onTap: () {  },),
      ],
    );
  }
}