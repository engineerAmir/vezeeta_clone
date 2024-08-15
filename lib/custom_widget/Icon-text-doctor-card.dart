import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconWithText(
    this.text,
    this.icon,
    {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        Icon(icon, size: 16, color: Colors.blue, ),
        SizedBox(width: 20,),
        Expanded(child: Text(text, style: TextStyle(fontSize: 15), overflow: TextOverflow.ellipsis,))
      ],
    );
  }
}