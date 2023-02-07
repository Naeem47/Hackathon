import 'package:flutter/material.dart';

class CArtView extends StatelessWidget {
  const CArtView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
        body: const Center(
      child:  Text("Cart"),
      ),
    );
  }
}