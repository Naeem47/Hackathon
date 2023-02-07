import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon/Constants/Colors.dart';
import 'package:hackathon/Constants/Texts.dart';
import 'package:hackathon/Constants/images.dart';
import 'package:hackathon/Constants/textstyle.dart';
import 'package:hackathon/Screens/Login_view.dart';
import 'package:hackathon/Screens/Signup_view.dart';
import 'package:hackathon/Widgets/ElevatedButton.dart';


class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstantss.white,
      body: Container(
        height: MediaQuery.of(context).size.height * 1.00,
        width: MediaQuery.of(context).size.width * 1.00,
        child: Column(
          children: [
            Container(
              height: 496,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 496,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(MyImages.rect),),),
                  ),
                  Container(
                    height: 496,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(MyImages.spimagevect))),
                  ),
                  Container(
                    height: 420,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(MyImages.logo))),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 420,
                    width: double.infinity,
                    child: Text(
                      Textconstants.splash1,
                      style: philosopher.copyWith(
                          color: Colorconstantss.white,
                          letterSpacing: 6,
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                          // fontFamily: FontsConstant.philosopher,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
              ),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  Textconstants.splash2,
                  style: TextStyle(
                      color: Colorconstantss.green,
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      // fontFamily: FontsConstant.philosopher,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 24),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  Textconstants.splash3,
                  style: TextStyle(
                      color: Colorconstantss.green,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      // fontFamily: FontsConstant.philosopher),
                ),
              ),
             
            ),
            
           
          
           
           ),

           Padding(
             padding: const EdgeInsets.only(top: 27),
             child: MyButton(onpressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Signupview();
              },));
             }, text: Textconstants.sbuttontext,),
           ),
          ],
        ),
      ),
    );
  }
}