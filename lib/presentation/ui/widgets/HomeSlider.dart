import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utility/AppColor.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  ValueNotifier<int> _selected_slider =ValueNotifier(0);
  List items = [1,2,3,4,5];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(height: 163.0,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 10),
              onPageChanged: (int page,_){
                _selected_slider.value = page;
              }
          ),

          items: items.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),

                    decoration: BoxDecoration(
                        color: AppColors.primarycolor.withOpacity(0.5)
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.network('https://www.pngall.com/wp-content/uploads/5/Purse.png',width: 120,height: 150,),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 20,),
                            Text('Happy New Year',style: TextStyle(color:Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
                            Text('Special Deal',style: TextStyle(color:Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
                            Text('Save 30%',style: TextStyle(color:Colors.white,fontSize: 22,fontWeight: FontWeight.bold)),
                           Container(
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(5)
                             ),
                             child: Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 7),
                               child: Text('Buy Now',style: TextStyle(color: AppColors.primarycolor,fontWeight: FontWeight.bold),),
                             ),
                           ),

                            SizedBox(height: 10,)

                          ],
                        )
                      ],
                    )
                );
              },
            );
          }).toList(),
        ),
        SizedBox(height: 5,),
        ValueListenableBuilder(valueListenable: _selected_slider, builder: (context,value,_){
          List<Widget> list = [];
          for(int i=0; i<items.length; i++){
            list.add(
                Container(
                  width: 10,
                  height: 10,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: value ==i ? AppColors.primarycolor : null
                  ),
                )
            );
          }
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: list,

          );
        })

      ],
    );
  }
}

