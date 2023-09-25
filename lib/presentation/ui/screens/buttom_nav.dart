import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/Cart.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/HomeScreen.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/categories.dart';
import 'package:flutter_ecommerce/presentation/ui/screens/wish_list.dart';
import 'package:flutter_ecommerce/presentation/ui/utility/AppColor.dart';

class ButtomNav extends StatefulWidget {
  const ButtomNav({super.key});

  @override
  State<ButtomNav> createState() => _ButtomNavState();
}



class _ButtomNavState extends State<ButtomNav> {

  int page_index=0;
  final List<Widget> _screens = [
    HomeScreen(),
    Categories(),
    Cart(),
    WishList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_screens[page_index] ,

      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        unselectedLabelStyle: TextStyle(
            color: Colors.grey
        ),
        currentIndex: page_index,
        onTap: (int index){
          page_index=index;
          print(page_index);
          if(mounted){
            setState(() {
            });
          }
        },
        selectedItemColor: AppColors.primarycolor,
        items:   const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard),label: 'Categories ',),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard_rounded),label: 'Wish'),
        ],),

    );




  }
}
