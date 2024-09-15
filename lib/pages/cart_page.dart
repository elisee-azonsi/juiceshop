import 'package:flutter/material.dart';
import 'package:fruitjuice_shop/components/juice_tile.dart';
import 'package:fruitjuice_shop/models/juice.dart';
import 'package:fruitjuice_shop/models/juice_shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  void removeFromCart(Juice juice) {
    Provider.of<JuiceShop>(context, listen: false).removeItemFromCart(juice);

    showDialog(
      context: context,
       builder: (context) => AlertDialog(
        title: Text("Produit retiré du panier!"),
       ),
       );

  }

  void payNow() {
    //****
  }


  @override
  Widget build(BuildContext context) {
    return  Consumer<JuiceShop>(
      builder: (context, value, child) => SafeArea(
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
            children: [
              Text(
                'Ton Panier', 
                style: TextStyle(fontSize: 20),
              ),

              Expanded(child: ListView.builder(
                itemCount: value.userCart.length,
                itemBuilder: (context, index) {

                Juice eachJuice = value.userCart[index];

                return JuiceTile(
                  juice: eachJuice, 
                  onPressed: () => removeFromCart(eachJuice), 
                  icon: Icon(Icons.delete),
                  );
              },),
              ),

              GestureDetector(
                onTap: payNow,
                child: Container(
                padding: const EdgeInsets.all(25),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center (
                  child: Text(
                  "Payer",
                  style: TextStyle(color: Colors.brown),
                  ),
                ),
                
                  ),
                  )
            ],
          ),
          ),
      ),
      );
  }
}