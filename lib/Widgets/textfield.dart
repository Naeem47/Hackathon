import 'package:flutter/material.dart';
class CustomTextfield extends StatelessWidget {
 const  CustomTextfield({super.key,required this.controller,required this.text,required this.color,required this.bcolor,required this.icon,});

  final TextEditingController controller;
  final String text;
  final Color color;
  final Color bcolor;
  final Icon  icon;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(  
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        fillColor:color ,
        prefixIcon: icon,
        border: OutlineInputBorder(
        borderSide: BorderSide(
          color: bcolor ,
        ),
        ),
      ),
    );
  }
}