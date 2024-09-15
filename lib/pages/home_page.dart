import 'package:flutter/material.dart';
import 'package:fruitjuice_shop/components/bottom_nav_bar.dart';
import 'package:fruitjuice_shop/const.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Pages
  final List<Widget> _pages = [
    // Page de la boutique
    ShopPage(),


    CartPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottonNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}