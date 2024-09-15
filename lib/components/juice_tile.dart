import 'package:flutter/material.dart';
import 'package:fruitjuice_shop/models/juice.dart';

// ignore: must_be_immutable
class JuiceTile extends StatelessWidget {
  final Juice juice;
  void Function()? onPressed;
  final Widget icon;
  JuiceTile({
    super.key, 
    required this.juice, 
    required this.onPressed, 
    required this.icon
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        ),
      margin:const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
      title: Text(juice.name),
      subtitle: Text(juice.price),
      leading: Image.asset(juice.imagePath),
      trailing: IconButton(
        icon: icon,
        onPressed: onPressed,
        ),
    ),
    );
  }
}