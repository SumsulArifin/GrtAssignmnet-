import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gtr_assignment/screen/dashbord_screen.dart';
class Splash_Screen4 extends StatefulWidget {
  const Splash_Screen4({Key? key}) : super(key: key);

  @override
  State<Splash_Screen4> createState() => _Splash_Screen4State();
}

class _Splash_Screen4State extends State<Splash_Screen4> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacement(
          context, MaterialPageRoute(
        builder: (context)=>Dashbord_Screen(),)
      );


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      child: Image.asset("assets/s4-mdpi.png")
                  ),
                  Container(
                    child: Image.asset("assets/s_42-mdpi.png"),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => Dashbord_Screen());
                          },
                          child: Container(
                            child: Card(child: Text("Skip")),
                          ),
                        ),
                        Image.asset("assets/s_4_3-mdpi.png",height: 13, width: 69,),

                      ],
                    ),
                  )
                ],

              ),
            )
        ),
      ),
    );
  }
}
