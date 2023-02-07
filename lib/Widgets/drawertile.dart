import 'package:flutter/material.dart';
import 'package:hackathon/Constants/Colors.dart';
import 'package:hackathon/Constants/textstyle.dart';

class Drawertile extends StatelessWidget {
  const Drawertile({super.key,required this.txt,required this.text});

  final String txt;
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 207,
      height: 30,
      color: Colorconstantss.green,
      child:  Padding(padding: const EdgeInsets.all(2),
      child: Row(children: [
        Image.asset(txt),
        const SizedBox(width: 25,),
        Text(text,style: popin.copyWith(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Colorconstantss.white,
        ),),
      ],),
      ),
    );
  }
}