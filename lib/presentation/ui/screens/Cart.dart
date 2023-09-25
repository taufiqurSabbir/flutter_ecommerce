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
  final _shipingAddress = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _shipingAddress.text = "Shamoli shoping complex, Shamoli, Dhaka - 1223";
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
              elevation: 1,
            ),
            body: Column(
              children: [
                buildSingleCartItems(size),
                buildSingleCartItems(size),
                buildSingleCartItems(size),
                buildSingleCartItems(size),
              ],
            ),


          bottomNavigationBar: Container(
            padding: EdgeInsets.only(bottom: 30, left: 30, right: 30),
            height: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("\$10,000.00",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        color: AppColors.primarycolor
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: ()=>showShoppingAddress(),
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 30, right: 30, top: 15, bottom: 15,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primarycolor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Checkout",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.white
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildSingleCartItems(Size size) {
    return Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 15),
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network('https://www.pngall.com/wp-content/uploads/5/Purse.png',width: 80,height: 80,),
                    SizedBox(
                      width: size.width*.50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New Year Special Product ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),
                          Text('Color: Red , Size: 20',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
                          SizedBox(height: 15,),
                          Text('\$100',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.primarycolor),),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.delete_outline, color: Colors.grey, size: 25,),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                                if(itemCount>0){
                                  itemCount--;
                                  setState(() {
                                  });
                                }else{
                                  Get.snackbar('Warning', 'Minimum Quantity 1');
                                }
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: AppColors.primarycolor.withOpacity(0.5),
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
              );
  }

  showShoppingAddress() async{
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(20),
            child: Wrap(
              children:  [
                ListTile(
                  leading: Icon(Icons.location_on_outlined),
                  title: Text('Shipping Address',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  trailing: Icon(Icons.edit, color: AppColors.primarycolor,),
                ),
                TextFormField(
                  readOnly: true,
                  controller: _shipingAddress,
                  maxLines: 4,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    hintText: "This is shiping address",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey)
                    )
                  ),

                ),
                SizedBox(height: 30,),
                Center(
                  child: InkWell(
                    onTap: ()=>createOrder(),
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      padding: EdgeInsets.only(
                        left: 30, right: 30, top: 15, bottom: 15,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primarycolor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Confirm Order",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }

  createOrder() async{
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Your order place successfull. Someone contact with you."),
      duration: Duration(milliseconds: 3000),
      backgroundColor: AppColors.primarycolor,
    ));
    Get.back();
  }
}
