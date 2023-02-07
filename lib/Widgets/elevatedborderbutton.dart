import 'package:flutter/material.dart';
import 'package:hackathon/Constants/Colors.dart';
import 'package:hackathon/Constants/textstyle.dart';

class borderbutton extends StatelessWidget {
  const borderbutton({super.key,required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: (){},
      style: ElevatedButton.styleFrom(
        minimumSize : const Size(363, 48),
        backgroundColor:Colorconstantss.green,
        shape:RoundedRectangleBorder(
          side: BorderSide(
            color: Colorconstantss.grey,
            
          ),
        ),
      ),
      child:  Text(text,style: popin.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w500
      ),),
    );
  }
}