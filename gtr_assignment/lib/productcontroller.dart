import 'dart:convert';

import 'package:get/get.dart';
import 'package:gtr_assignment/model/products_model.dart';
import 'package:gtr_assignment/services/productservice.dart';


class ProductController extends GetxController {

  // var isLoading = true.obs;
  // var productList = List<Products>().obs;
  //
  // @override
  // void onInit() {
  //   fetchProducts();
  //   super.onInit();
  // }
  //
  // void fetchProducts() async {
  //   try {
  //     isLoading(true);
  //     var products = await ProductServices.fetchProducts();
  //     if (products != null) {
  //       productList.value = productList;
  //     }
  //   } finally {
  //     isLoading(false);
  //   }
  // }


  // RxBool iloding=false.obs;
  //  List<ProductList>productlist=[];
  //  getproductDetails() async{
  //    var respons=await ProductServices.get("GetProductList","");
  //    ProductDetails data = ProductDetails.fromJson(json.decode(respons));
  //    print(data.productList);
  //
  //  }
  //
  // @override
  // void onInit() {
  //   super.onInit();
  //   getproductDetails();
  // }


  }
//
//   void fetchProducts() async {
//     try {
//       isLoading(true);
//       var products = await ProductServices.fetchProducts();
//       if (products != null) {
//         productList.value = products;
//       }
//     } finally {
//       isLoading(false);
//     }
//   }
// }