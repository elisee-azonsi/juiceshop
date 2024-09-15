import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottonNavBar extends StatelessWidget {
   void Function(int)? onTabChange; 
   MyBottonNavBar({super.key, required this.onTabChange,});

  @override
  Widget build(BuildContext context) {
    return Container (
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        color: Color.fromARGB(255, 207, 204, 204),
        activeColor: Colors.grey[700],
        mainAxisAlignment: MainAxisAlignment.center,
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: const[
            GButton(
              icon: Icons.home,
              text:'Shop',
              ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: 'Cart',
              ),
        ]
    ),
    );
  }
}