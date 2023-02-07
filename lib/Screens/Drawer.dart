import 'package:flutter/material.dart';
import 'package:hackathon/Constants/Colors.dart';
import 'package:hackathon/Constants/Texts.dart';
import 'package:hackathon/Constants/images.dart';
import 'package:hackathon/Constants/textstyle.dart';
import 'package:hackathon/Widgets/drawertile.dart';
import 'package:hackathon/Widgets/elevatedborderbutton.dart';

class Drawerview extends StatelessWidget {
   Drawerview({super.key});

  List list =[
    "Shop","Plant Care","Community","My Account","Track Order",
  ];
  List img = [
    MyImages.drawer1,
    MyImages.drawer2,
    MyImages.drawer3,
    MyImages.drawer4,
    MyImages.drawer5,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstantss.green,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 36,
            left: 36,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 300),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colorconstantss.white,
                  ),
                ),
              ),
              const SizedBox(height: 50,),
             Drawertile(txt: img[0], text: list[0],),
             const SizedBox(height: 40,),
              Drawertile(txt: img[1], text: list[1],),
             const SizedBox(height: 40,),
              Drawertile(txt: img[2], text: list[2],),
             const SizedBox(height: 40,),
              Drawertile(txt: img[3], text: list[3],),
             const SizedBox(height: 40,),
              Drawertile(txt: img[4], text: list[4],),
             const SizedBox(height: 50,),
             Text(Textconstants.drawer1,style:philosopher.copyWith(
              color: Colorconstantss.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
             ) ,),
             const SizedBox(height: 24,),
             borderbutton(text: Textconstants.drawerbuttontxt),
             
             const SizedBox(height: 54,),
              Text(Textconstants.drawer2.toUpperCase(),style:popin.copyWith(
                color: Colorconstantss.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
             ) ,),
             const SizedBox(height: 24,),
               Text(Textconstants.drawer3.toUpperCase(),style:popin.copyWith(
                color: Colorconstantss.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
             ) ,),
             const SizedBox(height: 24,),
               Text(Textconstants.drawer4.toUpperCase(),style:popin.copyWith(
                color: Colorconstantss.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
             ) ,),
            
            ],
          ),
        ),
      ),
    );
  }
}
