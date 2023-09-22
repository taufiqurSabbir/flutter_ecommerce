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
              autoPlayInterval: const Duration(seconds: 2),
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
                        color: AppColors.primarycolor
                    ),
                    child: Text('text $i', style: TextStyle(fontSize: 16.0),)
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

