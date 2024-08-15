import 'package:flutter/material.dart';

class HomePageIconButton extends StatelessWidget {
  final String text ;
  final String path;
  //final ContextAction Context;
  final VoidCallback Route;
  const HomePageIconButton({
    required this.text,
   // required this.Context,
    required this.path,
    required this.Route,
      super.key});


      
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: Route,
        child: Container(
      
      width: 110,
      height: 110,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: const BoxDecoration(
        
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(path)),
              borderRadius: const BorderRadius.all(Radius.circular(100)),
              color: const Color.fromARGB(255, 132, 198, 252),
            ),
          ),
          Text(text, style: const TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    ));
  }
}
