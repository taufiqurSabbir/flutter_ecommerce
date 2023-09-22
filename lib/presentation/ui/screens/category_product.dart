import 'package:flutter/material.dart';

import '../widgets/ProductWidget.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({super.key, required this.cataName});
  final String cataName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cataName,style: TextStyle(color: Colors.black),),
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 2,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
           Row(
              children: [
                ProductWidget(),
                ProductWidget(),
              ],
            ),
            Row(
              children: [
                ProductWidget(),
                ProductWidget(),
              ],
            ),
            Row(
              children: [
                ProductWidget(),
                ProductWidget(),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
