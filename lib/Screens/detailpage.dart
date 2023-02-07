import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/Constants/Colors.dart';
import 'package:hackathon/Constants/Texts.dart';
import 'package:hackathon/Constants/images.dart';
import 'package:hackathon/Constants/productdata.dart';
import 'package:hackathon/Constants/textstyle.dart';
import 'package:hackathon/Screens/Drawer.dart';

class Detail_view extends StatelessWidget {
  Detail_view({super.key});

  final productref = FirebaseFirestore.instance.collection("products");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colorconstantss.white,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(156, 229, 203, 1),
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Row(
              children: [
                Image.asset(MyImages.logosmall),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  Textconstants.plantify,
                  style: philosopher.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colorconstantss.blacktype,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colorconstantss.blacktype,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 17,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return Drawerview();
                      },
                    ),
                  );
                },
                child: Image.asset(
                  MyImages.menu,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Container(
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                        color: Colorconstantss.litegreen,
                        image: DecorationImage(
                          image: AssetImage(
                            MyImages.backgroundimage,
                          ),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 40,
                              right: 36,
                              top: 12,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      Textconstants.detail,
                                      style: popin.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colorconstantss.blacktype,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Image.asset(MyImages.pug),
                                    const SizedBox(
                                      width: 130,
                                    ),
                                    Container(
                                      width: 72,
                                      height: 26,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colorconstantss.white,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 16,
                                            color: Colorconstantss.green,
                                          ),
                                          Text(
                                            "4.8",
                                            style: popin.copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              color: Colorconstantss.blacktype,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  products[1]["productname"],
                                  style: philosopher.copyWith(
                                      fontWeight: FontWeight.w700, fontSize: 38),
                                ),
                                const SizedBox(
                                  height: 34,
                                ),
                                Text(
                                  Textconstants.price,
                                  style: popin.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colorconstantss.blacktype,
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  products[1]["price"],
                                  style: popin.copyWith(
                                      fontWeight: FontWeight.w600, fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 24,
                                ),
                                Text(
                                  Textconstants.size,
                                  style: popin.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colorconstantss.blacktype,
                                  ),
                                ),
                                const SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  Textconstants.sizedef,
                                  style: popin.copyWith(
                                      fontWeight: FontWeight.w600, fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 34,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 32,
                              top: 300,
                            ),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: SizedBox(
                                    height: 56,
                                    width: 56,
                                    child: Image.asset(
                                      MyImages.cart,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 22,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: SizedBox(
                                    height: 56,
                                    width: 56,
                                    child: Image.asset(
                                      MyImages.fav,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 142,
                            top: 120,
                            child: Container(
                              height: 250,
                              width: 227,
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                "assets/images/flower6.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: Container(color: Colorconstantss.white))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
