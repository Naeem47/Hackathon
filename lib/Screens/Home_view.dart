import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hackathon/Constants/Colors.dart';
import 'package:hackathon/Constants/Texts.dart';
import 'package:hackathon/Constants/images.dart';
import 'package:hackathon/Constants/productdata.dart';
import 'package:hackathon/Constants/textstyle.dart';
import 'package:hackathon/Screens/Drawer.dart';
import 'package:hackathon/Widgets/banner.dart';
import 'package:hackathon/Widgets/producthometile.dart';
import 'package:hackathon/Widgets/searchfield.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // controller for earch field
  TextEditingController searchcontroller = TextEditingController();

  // productsref
  final producstref = FirebaseFirestore.instance.collection('products');

  getproducts() async {
    return producstref.snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colorconstantss.white,
          appBar: AppBar(
            backgroundColor: Colorconstantss.white,
            elevation: 0,
            title: Padding(
              padding: const EdgeInsets.only(left: 17),
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
                  Icons.notifications_none,
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
            child: Padding(
              padding: const EdgeInsets.only(top: 8, left: 19, right: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BannerView(),
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Searchfield(controller: searchcontroller),
                        const SizedBox(
                          width: 14,
                        ),
                        GestureDetector(
                            onTap: () {},
                            child: Image.asset(
                              MyImages.fliter,
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 25,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TabBar(
                        indicatorWeight: 2.00,
                        unselectedLabelColor: Colorconstantss.blacktype,
                        labelColor: Colorconstantss.green,
                        indicatorColor: Colorconstantss.green,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelStyle: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 12),
                        labelPadding: const EdgeInsets.only(right: 10),
                        tabs: [
                          Tab(
                            text: Textconstants.toppick,
                          ),
                          Tab(
                            text: Textconstants.indoor,
                          ),
                          Tab(
                            text: Textconstants.outdoor,
                          ),
                          Tab(
                            text: Textconstants.seeds,
                          ),
                          Tab(
                            text: Textconstants.planters,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  SizedBox(
                    height: 600,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 60),
                      child: TabBarView(
                        children: [
                          StreamBuilder(
                            stream: producstref.snapshots(),
                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              if (snapshot.hasData) {
                                return ListView.separated(
                                  itemCount: snapshot.data.docs.length,
                                  itemBuilder: (context, index) {
                                    final DocumentSnapshot documentSnapshot =
                                        snapshot.data!.docs[index];
                                    return Producttile(
                                      color: products[index]['color'],
                                      price: documentSnapshot["price"],
                                      productmg: products[index]['productmg'],
                                      productname:
                                          documentSnapshot['productname'],
                                      isFavourite:
                                          documentSnapshot['isfavourite'],
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      height: 54,
                                    );
                                  },
                                );
                              } else {
                                return const CircularProgressIndicator();
                              }
                            },
                          ),
                          Lottie.asset("assets/lotties/lottie.json"),
                          Lottie.asset("assets/lotties/lottie.json"),
                          Lottie.asset("assets/lotties/lottie.json"),
                          Lottie.asset("assets/lotties/lottie.json"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 3,
                        width: 34,
                        color: Colorconstantss.blacktype,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    Textconstants.plife,
                    style: popin.copyWith(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: Colorconstantss.blacktype,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    Textconstants.plife2,
                    style: popin.copyWith(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colorconstantss.blacktype,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    Textconstants.plife3,
                    style: popin.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colorconstantss.blacktype,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
