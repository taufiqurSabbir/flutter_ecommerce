import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/admin/widget/singleProductItems.dart';
import 'package:get/get.dart';

import '../viewOrderDetails.dart';

class PendingOrders extends StatefulWidget {

  @override
  State<PendingOrders> createState() => _PendingOrdersState();
}

class _PendingOrdersState extends State<PendingOrders> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, index){
          return SingleProductItemsForAdmin(
            productImage: "https://www.pngall.com/wp-content/uploads/5/Purse.png",
            productName: "productName",
            productPrice: "2500",
            productQTY: "12",
            onClick: ()=>Get.to(OrderDetails()),
            location: "Dhanmondi 12, Dhaka, Bangladesh",
          );
        },
      ),
    );
  }
}
