import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/model/productModel.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:shimmer/shimmer.dart';

import '../../../controller/productController.dart';
import '../widgets/ProductWidget.dart';

class CategoryProducts extends StatefulWidget {
  const CategoryProducts({super.key, required this.catName, required this.lable});
  final int lable;
  final String catName;

  @override
  State<CategoryProducts> createState() => _CategoryProductsState();
}

class _CategoryProductsState extends State<CategoryProducts> {

  Future<ProductModel>? getProduct;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProduct = ProductController.products();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.catName,style: TextStyle(color: Colors.black),),
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 2,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FutureBuilder<ProductModel>(
            future: getProduct,
            builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting){
                return Center(child: SizedBox(height: 50, width: 50, child: CircularProgressIndicator(color: AppColors.primarycolor,)),);
              }else if(snapshot.hasData){
                return  GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                      mainAxisExtent: 250, // here set custom Height You Want
                    ),
                    itemCount: snapshot.data!.massage!.length,
                    itemBuilder: (_, index){
                       if(widget.lable == 1){
                         if(snapshot.data!.massage![index].isPopular == "1"){
                           return ProductWidget(
                             visible: true,
                             name: snapshot.data!.massage![index].name!,
                             price: snapshot.data!.massage![index].price!,
                             image: snapshot.data!.massage![index].image!,
                             singleProduct: snapshot.data!.massage![index],
                           ) ;
                         }
                       }else if(widget.lable == 2){
                         if(snapshot.data!.massage![index].isNew == "1"){
                           return ProductWidget(
                             visible: true,
                             name: snapshot.data!.massage![index].name!,
                             price: snapshot.data!.massage![index].price!,
                             image: snapshot.data!.massage![index].image!,
                             singleProduct: snapshot.data!.massage![index],
                           ) ;
                         }
                       }else if(widget.lable == 3){
                         if(snapshot.data!.massage![index].isSpecial == "1"){
                           return ProductWidget(
                             visible: true,
                             name: snapshot.data!.massage![index].name!,
                             price: snapshot.data!.massage![index].price!,
                             image: snapshot.data!.massage![index].image!,
                             singleProduct: snapshot.data!.massage![index],
                           ) ;
                         }
                       }else{
                         return ProductWidget(
                           visible: true,
                           name: snapshot.data!.massage![index].name!,
                           price: snapshot.data!.massage![index].price!,
                           image: snapshot.data!.massage![index].image!,
                           singleProduct: snapshot.data!.massage![index],
                         ) ;
                       }

                    }
                );
              }else{
                return Center(child: Text("Something went wrong"),);
              }
            }
        ),
      ),

      // body: GridView.count(
      //   primary: false,
      //   padding: const EdgeInsets.all(20),
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   crossAxisCount: 2,
      //   children: <Widget>[
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[100],
      //       child: const Text("He'd have you all unravel at the"),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[200],
      //       child: const Text('Heed not the rabble'),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[300],
      //       child: const Text('Sound of screams but the'),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[400],
      //       child: const Text('Who scream'),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[500],
      //       child: const Text('Revolution is coming...'),
      //     ),
      //     Container(
      //       padding: const EdgeInsets.all(8),
      //       color: Colors.teal[600],
      //       child: const Text('Revolution, they...'),
      //     ),
      //   ],
      // )
    );
  }
}
