import 'dart:convert';
import 'dart:io';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:gtr_assignment/AppColors.dart';
import 'package:gtr_assignment/model/products_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../services/apiconstants.dart';

class Dashbord_Screen extends StatefulWidget {
  const Dashbord_Screen({Key? key}) : super(key: key);

  @override
  State<Dashbord_Screen> createState() => _Dashbord_ScreenState();
}

class _Dashbord_ScreenState extends State<Dashbord_Screen> {

  Future<Products> getProductsApi() async {
    final response = await http.get(
        Uri.parse('https://pqstec.com/invoiceapps/Values/GetProductList'),
        headers: {HttpHeaders.authorizationHeader: APIConstants.clientToken});
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return Products.fromJson(data);
    } else {
      return Products.fromJson(data);
    }
  }

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
              Icons.search,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: AppColor.heardergreen),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Icon(Icons.verified_user),
                      ),
                    ),
                    Text("tkg@gmail.com"),
                    Text("User Name"),
                  ],
                )),
            ListTile(
              leading: Icon(Icons.update),
              title: Text("Upadate Profile"),
            ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text("Settings"),
              // onTap: (){
              //   Get.to(() => BarChartAPI());
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        // onTap: (){},
        items: const [
          BottomNavigationBarItem(
              label: 'Home', icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(
              label: 'Cart', icon: Icon(Icons.add_shopping_cart_sharp)),
          BottomNavigationBarItem(
              label: 'Favorite', icon: Icon(Icons.favorite_outline)),
          BottomNavigationBarItem(
              label: 'Me', icon: Icon(Icons.person_outline)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
              height: 133,
              width: MediaQuery.of(context).size.width * 333,
              child: Image.asset(
                'assets/card1-mdpi.png',
              )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 95,
              width: MediaQuery.of(context).size.width * 0.200,
              decoration: BoxDecoration(
                  border: Border.all(

                    style: BorderStyle.solid,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(9))),

            ),
          ),
        ],
      ),
    );
  }
}
