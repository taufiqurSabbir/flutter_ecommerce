import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/admin/widget/singleProductItems.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:get/get.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primarycolor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Order Detais"),
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Order Id: #2321312",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.primarycolor,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child:  Center(
                        child: Text("Now - Pending",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            color: Colors.white
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Text("Name: Nayon Talukder",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 10,),
                Text("Phone Number: +8801814569747",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 10,),
                Text("Location: Dhanmondi 12, Dhaka, Bangladesh",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                  ),
                ),
                SizedBox(height: 10,),
                Text("Payment Type: Cash On Delivery",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16
                  ),
                ),


                SizedBox(height: 40,),
                Text("Product Information:",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                  ),
                ),
                SizedBox(height: 10,),
                Container(
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                title: Text("Product Name",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                  ),
                ),
                trailing: IconButton(
                  onPressed: (){},
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
                              text: "12",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600
                              )
                          )
                        ]
                    )),
                    SizedBox(height: 2,),
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Price: ",
                              style: TextStyle(
                                  color: Colors.black,
                              )
                          ),
                          TextSpan(
                              text: "\$2500",
                              style: TextStyle(
                                  color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600
                              )
                          )
                        ]
                    )),
                  ],
                ),
                minLeadingWidth: 60,
                leading: CachedNetworkImage(
                  imageUrl: "https://www.pngall.com/wp-content/uploads/5/Purse.png",
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Padding(padding: EdgeInsets.all(20), child: CircularProgressIndicator(value: downloadProgress.progress)),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Text("Product Name",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: (){},
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
                                  text: "12",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  )
                              )
                            ]
                        )),
                        SizedBox(height: 2,),
                        RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "Price: ",
                                  style: TextStyle(
                                    color: Colors.black,
                                  )
                              ),
                              TextSpan(
                                  text: "\$2500",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  )
                              )
                            ]
                        )),
                      ],
                    ),
                    minLeadingWidth: 60,
                    leading: CachedNetworkImage(
                      imageUrl: "https://www.pngall.com/wp-content/uploads/5/Purse.png",
                      progressIndicatorBuilder: (context, url, downloadProgress) =>
                          Padding(padding: EdgeInsets.all(20), child: CircularProgressIndicator(value: downloadProgress.progress)),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),
                SizedBox(height: 20,),

              ],
            ),
          ),
          bottomNavigationBar: Container(
            margin: EdgeInsets.all(20),
            height: 100,
            child: Column(
              children: [
                Text("Change your order status.",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.primarycolor
                        ),
                        child: Center(
                          child: const Text("ON GAINING",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green
                        ),
                        child: Center(
                          child: const Text("DELIVERED",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red
                        ),
                        child: Center(
                          child: const Text("CANCEL",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
