import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gtr_assignment/screen/splashscreen/splashscreen4.dart';
class Splash_Screen3 extends StatefulWidget {
  const Splash_Screen3({Key? key}) : super(key: key);

  @override
  State<Splash_Screen3> createState() => _Splash_Screen3State();
}

class _Splash_Screen3State extends State<Splash_Screen3> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4),(){
      Navigator.push(
          context, MaterialPageRoute(
        builder: (context)=>Splash_Screen4(),)
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
                      child: Image.asset("assets/delivery1-mdpi.png")
                  ),
                  Container(
                    child: Image.asset("assets/de_img-mdpi.png"),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => Splash_Screen4());
                          },
                          child: Container(
                            child: Card(child: Text("Skip")),
                          ),
                        ),
                        Image.asset("assets/del_3-mdpi.png",height: 13, width: 69,),

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
