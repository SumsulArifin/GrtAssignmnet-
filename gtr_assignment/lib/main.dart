import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:gtr_assignment/screen/dashbord_screen.dart';
import 'package:gtr_assignment/screen/splashscreen/home_page/product/products.dart';
import 'package:gtr_assignment/screen/splashscreen/splashscreen1.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<dynamic> user=[];
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashbord_Screen(),
    );
  }
}