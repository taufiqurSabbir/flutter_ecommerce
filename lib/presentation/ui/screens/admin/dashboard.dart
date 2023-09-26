import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:get/get.dart';

import 'orderManagement.dart';


class AdminDashboard extends StatefulWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primarycolor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Fubby She - Admin",),
            backgroundColor: AppColors.primarycolor,
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Wellcome",
                  style: TextStyle(
                    color: Color(0xff333333),
                    fontWeight: FontWeight.w600,
                    fontSize: 35
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    buildCardWidget(
                      title: "Order\nManagement",
                      amount: "45",
                      onClick: ()=>Get.to(OrderManagement())
                    ),
                    SizedBox(width: 20,),
                    buildCardWidget(
                        title: "Product\nManagement",
                        amount: "45",
                        onClick: (){}
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    buildCardWidget(
                        title: "User\nManagement",
                        amount: "45",
                        onClick: (){}
                    ),
                    SizedBox(width: 20,),
                    buildCardWidget(
                        title: "Setting\n",
                        amount: "45",
                        onClick: (){}
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

  Expanded buildCardWidget({
  required String title,
  required String amount,
  required VoidCallback onClick,
}) {
    return Expanded(
                    child: InkWell(
                      onTap: onClick,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              spreadRadius: 2, blurRadius: 3
                            )
                          ]
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("$title",
                              style: TextStyle(
                                  color: Color(0xff333333),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15
                              ),
                            ),
                            SizedBox(height: 20,),
                            Text("$amount",
                              style: TextStyle(
                                fontSize: 35,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
  }
}
