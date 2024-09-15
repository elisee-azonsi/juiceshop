import 'package:flutter/material.dart';
import 'package:fruitjuice_shop/models/juice_shop.dart';
import 'package:provider/provider.dart';
import 'pages/home_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => JuiceShop(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),

    );
  }
}