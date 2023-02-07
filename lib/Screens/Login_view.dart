import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/Constants/Colors.dart';
import 'package:hackathon/Constants/Texts.dart';
import 'package:hackathon/Constants/images.dart';
import 'package:hackathon/Constants/textstyle.dart';
import 'package:hackathon/Screens/Main_view.dart';

import 'package:hackathon/Widgets/ElevatedButton.dart';
import 'package:hackathon/Widgets/Passtextfield.dart';
import 'package:hackathon/Widgets/textfield.dart';

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  // login func
  login(context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: pass.text,
      );
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return const  Main();
      },));
    } on FirebaseAuthException catch (e) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                e.code.toString().toUpperCase(),
              ),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,top: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image.asset(MyImages.backbutton)),
                const SizedBox(
                  height: 34,
                ),
                Row(
                  children: [
                    Image.asset(
                      MyImages.loginlogo,
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    Text(
                      Textconstants.login,
                      style: philosopher.copyWith(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                Text(
                  Textconstants.login2,
                  style: philosopher.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 36,color: Colorconstantss.green),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  Textconstants.login3,
                  style: popin.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,color: Colorconstantss.green),
                ),
                const SizedBox(
                  height: 47,
                ),
                Text(
                  Textconstants.login4,
                  style: inte.copyWith(fontSize: 16,color:Colorconstantss.blue,),
                ),
                CustomTextfield(
                  controller: email,
                  text: Textconstants.login5,
                  color: Colorconstantss.blue,
                  bcolor: Colorconstantss.grey,
                  icon: const Icon(Icons.person),
                ),
                 const SizedBox(
                  height: 36,
                ),
                Text(
                  Textconstants.login6,
                  style: inte.copyWith(fontSize: 16,color:Colorconstantss.blue,),
                ),
                Passtextfield(
                  controller: pass,
                  text: Textconstants.login7,
                  color: Colorconstantss.blue,
                  bcolor: Colorconstantss.grey,
                  icon: const Icon(Icons.lock),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:200 ),
                  child: TextButton(onPressed: (){
          
                  }, child: Row(
                    children: [
                      Text(Textconstants.login8,style: inte.copyWith(
                       fontSize: 14 ,color:Colorconstantss.blue,
                      ),),
                    ],
                  ),),
                ),
                const SizedBox(
                  height: 43,
                ),
                MyButton(onpressed: (){
                  login(context);
                  email.clear();
                  pass.clear();
                }, text: Textconstants.lbuttontext),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
