import 'package:flutter/material.dart';
import 'package:hackathon/Constants/Colors.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.onpressed, required this.text});

  final onpressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpressed,
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          minimumSize : const Size(363, 48),
          backgroundColor: Colorconstantss.green,
          
        ),
        child:  Text(text),
        );
  }
}
