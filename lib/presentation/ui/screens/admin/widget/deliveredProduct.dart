import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/admin/widget/singleProductItems.dart';

class DeliveredProduct extends StatefulWidget {

  @override
  State<DeliveredProduct> createState() => _DeliveredProductState();
}

class _DeliveredProductState extends State<DeliveredProduct> {
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
            onClick: (){},
            location: "Dhanmondi 12, Dhaka, Bangladesh",
          );
        },
      ),
    );
  }
}
