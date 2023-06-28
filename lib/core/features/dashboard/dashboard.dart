
import 'package:flutter/material.dart';
import 'package:my_page/core/features/cart/presentation/cart.dart';
import 'package:my_page/core/features/home/presentation/home_page.dart';
import 'package:my_page/core/features/profile/presentation/profile.dart';
import 'package:my_page/core/features/shop/presentation/shop.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentpageNo =0;
  List<Widget> pages =[
    HomePage(),
    ShopPage(),
    CartPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        fixedColor:Colors.red,
        currentIndex: currentpageNo,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.deepOrange,),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.shop,color: Colors.deepOrange,),label: "Shop",),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.deepOrange,),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.deepOrange,),label: "Profile"),


        ],
        onTap: (int index){
          setState(() {
            currentpageNo = index;
          });
        },
        unselectedItemColor: Colors.black,
      ),
      body: pages[currentpageNo],
    );
  }
}
