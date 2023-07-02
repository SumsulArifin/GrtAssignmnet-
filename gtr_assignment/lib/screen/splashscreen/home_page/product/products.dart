import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gtr_assignment/productcontroller.dart';

import '../../../../AppColors.dart';

class Product extends StatelessWidget {
  var productdetailsController=Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.heardergreen,
        elevation: 0,
        title: Center(
            child: Image.asset(
              'assets/ubazar-mdpi.png',
              width: 63,
              height: 23,
            )),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: ListView.builder(itemCount: 0, itemBuilder: (context, index) {
        return Text(("data"));
      }),
    );
  }
  }