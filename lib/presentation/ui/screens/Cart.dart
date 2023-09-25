import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import '../utility/AppColor.dart';
class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int itemCount =0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppColors.primarycolor,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Cart',style: TextStyle(color: Colors.black),),
              leading: BackButton(
                color: Colors.black,
              ),
              backgroundColor: Colors.white,
              elevation: 2,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
              child: Container(
                width: double.infinity,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network('https://www.pngall.com/wp-content/uploads/5/Purse.png',width: 100,height: 100,),
                    Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('New Year Special Product ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        SizedBox(height: 1.5.h,),
                        Text('Color: Red , Size: 20',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                        SizedBox(height: 2.h,),
                        Text('\$100',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.primarycolor),),
                      ],
                    ),
                    Column(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: AppColors.primarycolor,)),
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                                if(itemCount>0){
                                  itemCount--;
                                  setState(() {
                                  });
                                }else{
                                  Get.snackbar('Warning', 'Minium Quantity 1');
                                }
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColors.primarycolor,
                                  ),

                                  child: Icon(Icons.remove,color: Colors.white,)),
                            ),
                            SizedBox(width: 10,),
                            Text(itemCount.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            SizedBox(width: 10,),
                            InkWell(
                              onTap: (){
                                itemCount++;
                                setState(() {

                                });
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColors.primarycolor,
                                  ),

                                  child: Icon(Icons.add,color: Colors.white,)),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}
