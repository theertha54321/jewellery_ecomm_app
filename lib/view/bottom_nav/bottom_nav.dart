import 'package:flutter/material.dart';
import 'package:jewellery_ecomm_app/utils/color_constants.dart';
import 'package:jewellery_ecomm_app/view/category_screen/category_screen.dart';
import 'package:jewellery_ecomm_app/view/findstore_screen/findstore_screen.dart';
import 'package:jewellery_ecomm_app/view/home_screen/home_screen.dart';
import 'package:jewellery_ecomm_app/view/profile_screen/profile_screen.dart';
import 'package:jewellery_ecomm_app/view/tryathome_screen/tryathome_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex=0;
  List screens =[
    HomeScreen(),
    CategoryScreen(),
    TryathomeScreen(),
    FindstoreScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

  body: screens[selectedIndex],
  bottomNavigationBar: BottomNavigationBar(
    currentIndex: selectedIndex,
    onTap: (value){
      selectedIndex=value;
      setState(() {
        
      });
    },
    selectedItemColor: Colors.pink,
    unselectedItemColor: ColorConstants.purple1,
    type: BottomNavigationBarType.fixed,
    items:[ 
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.category),label: "Categories"),
      BottomNavigationBarItem(icon: Icon(Icons.home_max_outlined),label: "Try At Home"),
      BottomNavigationBarItem(icon: Icon(Icons.location_city_outlined),label: "Find Store"),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: "You")
    ]
    ),




    );
  }
}


