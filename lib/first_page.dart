import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white10,
      body: ListView(

        children: [
          Lottie.network('https://assets3.lottiefiles.com/packages/lf20_usmfx6bp.json'),
        ],
      ),
    );
  }
}
