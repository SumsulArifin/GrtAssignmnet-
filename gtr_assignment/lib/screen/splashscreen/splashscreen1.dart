import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gtr_assignment/AppColors.dart';
import 'package:gtr_assignment/screen/splashscreen/splashscreen2.dart';

class Splash_Screen1 extends StatefulWidget {
  const Splash_Screen1({Key? key}) : super(key: key);

  @override
  State<Splash_Screen1> createState() => _Splash_Screen1State();
}

class _Splash_Screen1State extends State<Splash_Screen1> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1),(){
      Navigator.push(
          context, MaterialPageRoute(
          builder: (context)=>Splash_Screen2(),)
      );


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.green,
      body: Center(child: Image.asset('assets/ubazar-mdpi.png',height: 111,width: 290,)),
    );
  }
}
