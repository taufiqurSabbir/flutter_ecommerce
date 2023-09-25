import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/wish_list.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';
import 'package:flutter_ecommerce/presentation/ui/widgets/Body_text.dart';
import 'package:get/get.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int itemCount =0;

  List _selectColor = [];
  List<Color> color = [
    Colors.red, Colors.black, Colors.amber
  ];

  List _selecteProductSize = [];
  List<String> productSize = [
    "S", "M", "X", "XL"
  ];


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details',style: TextStyle(color: Colors.black),),
        leading: BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://static-01.daraz.com.bd/p/82af30a090b3d3e5a59c1d5f8903060b.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://static-01.daraz.com.bd/p/d074b19b805fbef9d339f4ee69248206.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://giftall.s3.amazonaws.com/uploads/images/product/product_639e950f58065_1126988548.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
                options: CarouselOptions(
                  viewportFraction: 1,
              height: 400.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),


            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width:size.width*.70,
                      child: Text('Happy new Year special save 30%',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600, color: Colors.black87),)),

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
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 15,),
                Icon(Icons.star,color: Colors.amber,),
                SizedBox(width: 15,),
                Text('4.3',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(width: 15,),
                InkWell(
                    onTap: (){
                      Get.to(WishList());
                    },
                    child: Icon(Icons.favorite_border,color: AppColors.primarycolor,)),
                SizedBox(width: 15,),
                Spacer(),
              ],
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: BodyTitle(title_text: 'Color', TextColor: Colors.black, textsize: 20),
            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20.0,),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: color.length,
                itemBuilder: (_, index){
                  return InkWell(
                    onTap: (){
                      setState(() {
                        if(_selectColor.contains(color[index])){
                          _selectColor.remove(color[index]);
                        }else{
                          _selectColor.add(color[index]);
                        }
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: color[index],
                          ),
                          _selectColor.contains(color[index]) ?  Padding(
                              padding: EdgeInsets.all(7),
                              child: Icon(Icons.check, color: Colors.white,)) : Center()
                        ],
                      ),
                    ),
                  );
                },
              )
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: BodyTitle(title_text: 'Size', TextColor: Colors.black, textsize: 20),
            ),
            SizedBox(height: 10,),
            Container(
                height: 30,
                padding: const EdgeInsets.symmetric(horizontal: 20.0,),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productSize.length,
                  itemBuilder: (_, index){
                    return InkWell(
                      onTap: (){
                        setState(() {
                          if(_selecteProductSize.contains(productSize[index])){
                            _selecteProductSize.remove(productSize[index]);
                          }else{
                            _selecteProductSize.add(productSize[index]);
                          }
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Container(
                          width: 30, height: 30,
                          decoration: BoxDecoration(
                              color:_selecteProductSize.contains(productSize[index]) ? AppColors.primarycolor : Colors.white,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(width: 1, color: AppColors.primarycolor)
                          ),
                          child: Center(
                            child: Text("${productSize[index]}",
                              style: TextStyle(
                                color: _selecteProductSize.contains(productSize[index]) ? Colors.white : Colors.black
                              ),
                            ),
                          ),

                        )
                      ),
                    );
                  },
                )
            ),


            SizedBox(height: 20,),
            BodyTitle(title_text: 'Description', TextColor: Colors.black87, textsize: 20),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",style: TextStyle(fontSize: 15,color: Colors.black45),),
            ),
            SizedBox(height: 30,),

          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
            color: AppColors.primarycolor.withOpacity(0.1),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20),bottomLeft: Radius.zero,bottomRight: Radius.zero )
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Price',style: TextStyle(fontSize: 18, color: Colors.black87),),
                  Text('2500 ৳',style: TextStyle(fontSize: 25,color: AppColors.primarycolor),),
                ],
              ),
              SizedBox(width:180, child: ElevatedButton(onPressed: (){}, child: Text('Add to cart')))
            ],
          ),
        ),
      ),
    );
  }
}
