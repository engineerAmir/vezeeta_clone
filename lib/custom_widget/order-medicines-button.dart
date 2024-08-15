import 'package:flutter/material.dart';

class OrderMedicinesButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const OrderMedicinesButton(
    this.icon,
    this.text,
    {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 80,
      padding: EdgeInsets.symmetric(vertical: 5),
      alignment: Alignment.center,
    
      decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromARGB(57, 28, 148, 246)
      ),
      child: Column(
        
        children: [
          Icon(icon , color: Color.fromARGB(255, 0, 110, 200),),
          Text(text , style: TextStyle(color: Color.fromARGB(255, 0, 110, 200)), textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}