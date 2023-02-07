import 'package:flutter/material.dart';
import 'package:hackathon/Constants/Colors.dart';
import 'package:hackathon/Constants/Texts.dart';
import 'package:hackathon/Constants/images.dart';
import 'package:hackathon/Constants/textstyle.dart';
import 'package:hackathon/Widgets/ElevatedButton.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorconstantss.white,
      body: SafeArea(
        // GestureDetector(
        //               onTap: (){
        //                 Navigator.pop(context);
        //               },
        //               child: Image.asset(MyImages.backbutton),),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
                 GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image.asset(MyImages.backbutton),),
                     
                    Padding(
                      padding: const EdgeInsets.only(top: 191,),
                      child: Center(
                        child: Column(
                          children: [
                            Text(Textconstants.ordertext,style: inte.copyWith(
                              fontSize: 36,
                              fontWeight: FontWeight.w800,
                              color: Colorconstantss.green,
                            ) ,),
                            Text(Textconstants.ordertext2,style: popin.copyWith(
                              fontWeight:FontWeight.w500,
                              fontSize: 14,
                            ),),
                            const SizedBox(height: 120,),
                            Container(
                              height: 120,
                              width: 144,
                              color: Colorconstantss.white,
                              child: Image.asset(MyImages.logoorder,fit: BoxFit.cover,)),
                            const SizedBox(height: 24,),
                            MyButton(onpressed: (){

                            }, text: Textconstants.ordernbuttontxt,),
                          ],
                        ),
                      ),
                    )
                                             
                      
               
          ],
        ),
      ),
    );
  }
}