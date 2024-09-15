import 'package:flutter/material.dart';
import 'juice.dart';

class JuiceShop extends ChangeNotifier{
  // List de jus
  final List<Juice> _shop = [
  
  Juice(
    name:'Jus de Pomme',
    price: "4.10",
    imagePath: "lib/images/apple-juice.jpeg"
  ),

  Juice(
    name:'Jus de Mirtille',
    price: "4.10",
    imagePath: "lib/images/bb-juice.jpeg"
  ),

  Juice(
    name:'Jus de Kiwi',
    price: "4.10",
    imagePath: "lib/images/kiwi-juice.jpeg"
  ),

  Juice(
    name:'Jus de Citron',
    price: "4.10",
    imagePath: "lib/images/lemon-juice.jpeg"
  ),

  Juice(
    name:'Jus de Orange',
    price: "4.10",
    imagePath: "lib/images/orange-juice.jpeg"
  ),

  Juice(
    name:'Jus de Fraise',
    price: "4.10",
    imagePath: "lib/images/strw-juice.jpeg"
  ),
  Juice(
    name:'Jus de Pastèque',
    price: "4.10",
    imagePath: "lib/images/wmelon-juice.jpeg"
  ),

  Juice(
    name:'Jus de Lime',
    price: "4.10",
    imagePath: "lib/images/lime-juice.jpeg"
  ),


  ];

  List<Juice> _userCart = [];

  List<Juice> get juiceShop => _shop;

  List<Juice> get userCart => _userCart;

  void addItemToCart(Juice juice) {
    _userCart.add(juice);
    notifyListeners();
  }

  void removeItemFromCart(Juice juice) {
    _userCart.remove(juice);
  }

}