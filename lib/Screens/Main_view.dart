import 'package:flutter/material.dart';
import 'package:hackathon/Constants/Colors.dart';
import 'package:hackathon/Screens/Home_view.dart';
import 'package:hackathon/Screens/cart.dart';
import 'package:hackathon/Screens/favourtie.dart';
import 'package:hackathon/Screens/profile.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

int _selectedIndex = 0;


 
// list for bottom nav 

final List pages =[
  Home(),
  const CArtView(),
  const Favourite(),
  const Profile(),


];

  // bottomnav logic


class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: pages[_selectedIndex],
      ) ,
       bottomNavigationBar:
              BottomNavigationBar(
                 currentIndex: _selectedIndex,
                 selectedItemColor: Colorconstantss.blacktype,
                 onTap: (int indexnew){
                setState(() {
                  _selectedIndex = indexnew;
                });
                 } ,
                 
                
                items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined,color: Colorconstantss.blacktype,),
              label: "HOME",              

            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline,color: Colorconstantss.blacktype,),
              label: "Favourite",
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined,color: Colorconstantss.blacktype,),
              label: "Cart",
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.person_3_outlined,color: Colorconstantss.blacktype,),
              label: "Profile",
            ),
          ]),
    );
  }
}