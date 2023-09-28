import 'package:flutter/material.dart';

import '../widgets/ProductWidget.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wish List',style: TextStyle(color: Colors.black),),
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 2,
      ),

      body: SingleChildScrollView(
        // child: Column(
        //   children: [
        //     SizedBox(height: 15,),
        //     Row(
        //       children: [
        //         ProductWidget(),
        //         ProductWidget(),
        //       ],
        //     ),
        //     Row(
        //       children: [
        //         ProductWidget(),
        //         ProductWidget(),
        //       ],
        //     ),
        //     Row(
        //       children: [
        //         ProductWidget(),
        //         ProductWidget(),
        //       ],
        //     ),
        //
        //   ],
        // ),
      ),
    );
  }
}
