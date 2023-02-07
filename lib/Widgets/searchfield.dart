import 'package:flutter/material.dart';
import 'package:hackathon/Constants/Colors.dart';
import 'package:hackathon/Constants/Texts.dart';
import 'package:hackathon/Constants/images.dart';
import 'package:hackathon/Constants/textstyle.dart';

class Searchfield extends StatelessWidget {
  const Searchfield({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 281,
      height: 46,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: Textconstants.searchText,
          prefixIcon: Icon(
            Icons.search,
            color: Colorconstantss.blacktype,
          ),
          hintStyle: popin.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colorconstantss.blacktype,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colorconstantss.blacktype,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusColor: Colorconstantss.blacktype,
          suffixIcon: Image.asset(
            MyImages.scanner,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colorconstantss.blacktype, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colorconstantss.blacktype, width: 1),
          ),
        ),
      ),
    );
  }
}
