import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/admin/widget/deliveredProduct.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/admin/widget/onGoiningOrders.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/admin/widget/pendingOrders.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/image_asset.dart';


class OrderManagement extends StatefulWidget {
  const OrderManagement({Key? key}) : super(key: key);

  @override
  State<OrderManagement> createState() => _OrderManagementState();
}

class _OrderManagementState extends State<OrderManagement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primarycolor,
      child: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Order Management"),
                bottom: const TabBar(
                  indicatorColor: Colors.red,
                  tabs: [
                    Tab(child: Text("Pending Orders"),),
                    Tab(child: Text("On Going"),),
                    Tab(child: Text("Delivered"),),
                  ],
                ),
            ),
            body: TabBarView(
              children: [
                PendingOrders(),
                OnGoiningOrders(),
                DeliveredProduct(),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
