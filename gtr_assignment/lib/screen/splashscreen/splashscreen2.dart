import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gtr_assignment/screen/splashscreen/splashscreen3.dart';
class Splash_Screen2 extends StatefulWidget {
  const Splash_Screen2({Key? key}) : super(key: key);

  @override
  State<Splash_Screen2> createState() => _Splash_Screen2State();
}

class _Splash_Screen2State extends State<Splash_Screen2> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.push(
                context, MaterialPageRoute(
              builder: (context)=>Splash_Screen3(),)
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
                      child: Image.asset("assets/welcome-mdpi.png")
                  ),
                  Container(
                    child: Image.asset("assets/screen2pic-mdpi.png"),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => Splash_Screen3());
                          },
                          child: Container(
                            child: Card(child: Text("Skip")),
                          ),
                        ),
                        Image.asset("assets/Gr1-mdpi.png",height: 13, width: 69,),

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
