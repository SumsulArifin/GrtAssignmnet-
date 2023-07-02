import 'dart:io';
import 'package:gtr_assignment/model/products_model.dart';
import 'package:http/http.dart' as http;

import 'apiconstants.dart';

class ProductServices {
  static var client = http.Client();

  static Future<Products?> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'https://pqstec.com/invoiceapps/Values/GetProductList'),
    headers:{HttpHeaders.authorizationHeader: APIConstants.clientToken} );
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productsFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}
