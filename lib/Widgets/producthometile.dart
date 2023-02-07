import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/Constants/images.dart';
import 'package:hackathon/Constants/productdata.dart';
import 'package:hackathon/Constants/textstyle.dart';
import 'package:hackathon/Screens/favourtie.dart';

class Producttile extends StatelessWidget {
  const Producttile({
    super.key,
    required this.color,
    required this.price,
    required this.productmg,
    required this.productname,
    required this.isFavourite,
  });

  final Color color;
  final String productmg;
  final String productname;
  final String price;
  final bool isFavourite;

  Future<void> favourite( String userId ,String productsId)async{
  final favouriteref =  FirebaseFirestore.instance.collection('favourites').doc(userId).collection('products').doc(productsId);
   await favouriteref.set({
   'productId' :productsId,
   }); 
  }

 Future<void> favourite2 ()async{
   final favref = FirebaseFirestore.instance.collection('favourites').add({
    'productname':  ,
    
   }) ;

  }
// Future<void> _dlete(String slipDataId) async {
//     await _slipData.doc(slipDataId).delete();
//   }
  

   

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 280,
          height: 177,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(
                MyImages.backgroundimage,
              ),
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, left: 24, bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Air Purifier",
                          style: popin.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 21,
                        ),
                        SizedBox(
                          width: 17,
                          height: 17.5,
                          child: Image.asset(
                            MyImages.pug,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 21,
                    ),
                    Text(
                      productname,
                      style: philosopher.copyWith(
                          fontSize: 32, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      width: 21,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          price,
                          style: popin.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),

                       
                        IconButton(
                          
                         onPressed: (){},
                          icon: const  Icon(
                            Icons.favorite_outline
                            
                          ),
                        ),
                        SizedBox(
                          height: 56,
                          width: 56,
                          child: GestureDetector(
                              onTap: () {

                              },
                              child: Image.asset(
                                MyImages.cart,
                                fit: BoxFit.cover,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 220,
          bottom: 15,
          child: SizedBox(
            // alignment: Alignment.topLeft,
            width: 119,
            height: 172,
            child: Image.asset(
              productmg,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
