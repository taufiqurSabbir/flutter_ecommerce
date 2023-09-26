import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../utility/AppColor.dart';


class SingleProductItemsForAdmin extends StatelessWidget {
  const SingleProductItemsForAdmin({Key? key, required this.productName, required this.productPrice, required this.productQTY, required this.location, required this.onClick, required this.productImage}) : super(key: key);

  final String productName;
  final String productPrice;
  final String productQTY;
  final String location;
  final String productImage;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        title: Text("$productName",
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
          ),
        ),
        trailing: IconButton(
          onPressed: onClick,
          icon: Icon(Icons.remove_red_eye, color: AppColors.primarycolor,),
        ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            RichText(text: TextSpan(
                children: [
                  TextSpan(
                      text: "QTY: ",
                      style: TextStyle(
                          color: Colors.black
                      )
                  ),
                  TextSpan(
                      text: "$productQTY X \$$productPrice",
                      style: TextStyle(
                          color: Colors.black
                      )
                  )
                ]
            )),
            SizedBox(height: 2,),
            RichText(text: TextSpan(
                children: [
                  TextSpan(
                      text: "Location: ",
                      style: TextStyle(
                          color: Colors.black
                      )
                  ),
                  TextSpan(
                      text: "$location",
                      style: TextStyle(
                          color: Colors.black
                      )
                  )
                ]
            ))
          ],
        ),
        minLeadingWidth: 60,
        leading: CachedNetworkImage(
          imageUrl: "$productImage",
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              Padding(padding: EdgeInsets.all(20), child: CircularProgressIndicator(value: downloadProgress.progress)),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
