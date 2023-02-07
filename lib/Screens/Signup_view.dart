import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/Constants/Colors.dart';
import 'package:hackathon/Constants/Texts.dart';
import 'package:hackathon/Constants/images.dart';
import 'package:hackathon/Constants/textstyle.dart';
import 'package:hackathon/Screens/Login_view.dart';
import 'package:hackathon/Widgets/ElevatedButton.dart';
import 'package:hackathon/Widgets/Passtextfield.dart';
import 'package:hackathon/Widgets/textfield.dart';

class Signupview extends StatelessWidget {
   Signupview({super.key});

  
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  //signup func
  signup(context) async {
  try {
    final crendetial =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email.text,
      password: pass.text,
    );
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return  Login();
      },));
  } on FirebaseAuthException catch (e) {
  return showDialog(context: context, builder: (context) {
    return AlertDialog(
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(e.code.toString().toUpperCase(),),
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
                      Textconstants.signup1,
                      style: philosopher.copyWith(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                Text(
                  Textconstants.signup2,
                  style: philosopher.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 36,color: Colorconstantss.green),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  Textconstants.signup3,
                  style: popin.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,color: Colorconstantss.green),
                ),
                const SizedBox(
                  height: 47,
                ),
                Text(
                  Textconstants.signup4,
                  style: inte.copyWith(fontSize: 16,color:Colorconstantss.blue,),
                ),
                CustomTextfield(
                  controller: email,
                  text: Textconstants.signup5,
                  color: Colorconstantss.blue,
                  bcolor: Colorconstantss.grey,
                  icon: const Icon(Icons.person),
                ),
                 const SizedBox(
                  height: 36,
                ),
                Text(
                  Textconstants.signup6,
                  style: inte.copyWith(fontSize: 16,color:Colorconstantss.blue,),
                ),
                Passtextfield(
                  controller: pass,
                  text: Textconstants.signup7,
                  color: Colorconstantss.blue,
                  bcolor: Colorconstantss.grey,
                  icon: const Icon(Icons.lock),
                ),
               
                const SizedBox(
                  height: 56,
                ),
                MyButton(onpressed: (){
                  signup(context);
                   email.clear();
                  pass.clear();
                }, text: Textconstants.singnbuttontxt),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}