import 'package:flutter/material.dart';
import 'package:hackathon/Constants/Colors.dart';
import 'package:hackathon/Constants/Texts.dart';
import 'package:hackathon/Constants/images.dart';
import 'package:hackathon/Constants/textstyle.dart';

class BannerView extends StatelessWidget {
  const BannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                  width: 337,
                  height: 199,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(
                        MyImages.bannerimg,
                      ),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 47, left: 19.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Textconstants.banner1,
                              style: philosopher.copyWith(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Colorconstantss.blacktype,
                              ),
                            ),
                            const SizedBox(
                              height: 26.55,
                            ),
                            Text(
                              Textconstants.banner2,
                              style: popin.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colorconstantss.blacktype,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
  }
}