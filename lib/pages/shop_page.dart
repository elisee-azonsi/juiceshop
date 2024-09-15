import 'package:flutter/material.dart';
import 'package:fruitjuice_shop/components/juice_tile.dart';
import 'package:fruitjuice_shop/models/juice.dart';
import 'package:fruitjuice_shop/models/juice_shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // ajouter le jus dans le panier
  void addToCart(Juice juice) {

    Provider.of<JuiceShop>(context, listen: false).addItemToCart(juice);

    showDialog(
      context: context,
       builder: (context) => AlertDialog(
        title: Text("Produit ajouté au panier!"),
       ),
       );

  }



  @override
  Widget build(BuildContext context) {
    return Consumer<JuiceShop>(
      builder: (context, value, child) => SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const Text(
              "Tu veux comment ton juice?",
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 25),
            Expanded(
              child: ListView.builder(
                itemCount: value.juiceShop.length,
                itemBuilder: (context, index) {

                Juice eachJuice = value.juiceShop[index];

                return JuiceTile(
                 juice: eachJuice,
                 icon: Icon(Icons.add),
                 onPressed: () => addToCart(eachJuice),
                );
                
              })
            )
          ]),
        )
      ),
    );
  }
}