// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  int? success;
  bool? error;
  List<ProductList>? productList;
  PageInfo? pageInfo;

  Products({
    this.success,
    this.error,
    this.productList,
    this.pageInfo,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    success: json["Success"],
    error: json["error"],
    productList: List<ProductList>.from(json["ProductList"].map((x) => ProductList.fromJson(x))),
    pageInfo: PageInfo.fromJson(json["PageInfo"]),
  );

  Map<String, dynamic> toJson() => {
    "Success": success,
    "error": error,
    "ProductList": List<dynamic>.from(productList!.map((x) => x.toJson())),
    "PageInfo": pageInfo!.toJson(),
  };
}

class PageInfo {
  int? pageNo;
  int? pageSize;
  int? pageCount;
  int? totalRecordCount;

  PageInfo({
    this.pageNo,
    this.pageSize,
    this.pageCount,
    this.totalRecordCount,
  });

  factory PageInfo.fromJson(Map<String, dynamic> json) => PageInfo(
    pageNo: json["PageNo"],
    pageSize: json["PageSize"],
    pageCount: json["PageCount"],
    totalRecordCount: json["TotalRecordCount"],
  );

  Map<String, dynamic> toJson() => {
    "PageNo": pageNo,
    "PageSize": pageSize,
    "PageCount": pageCount,
    "TotalRecordCount": totalRecordCount,
  };
}

class ProductList {
  int? id;
  String? type;
  String? parentCode;
  String? name;
  String? code;
  int? price;
  int? costPrice;
  UnitName? unitName;
  CategoryName? categoryName;
  BrandName? brandName;
  String? modelName;
  String? variantName;
  String? sizeName;
  String? colorName;
  int? oldPrice;
  String? imagePath;
  String? productBarcode;
  Description? description;
  List<List<int>>? childList;
  List<dynamic>? warehouseList;
  int? currentStock;
  String? createDate;
  String? updateDate;

  ProductList({
    this.id,
    this.type,
    this.parentCode,
    this.name,
    this.code,
    this.price,
    this.costPrice,
    this.unitName,
    this.categoryName,
    this.brandName,
    this.modelName,
    this.variantName,
    this.sizeName,
    this.colorName,
    this.oldPrice,
    this.imagePath,
    this.productBarcode,
    this.description,
    this.childList,
    this.warehouseList,
    this.currentStock,
    this.createDate,
    this.updateDate,
  });

  factory ProductList.fromJson(Map<String, dynamic> json) => ProductList(
    id: json["Id"],
    type: json["Type"],
    parentCode: json["ParentCode"],
    name: json["Name"],
    code: json["Code"],
    price: json["Price"],
    costPrice: json["CostPrice"],
    unitName: unitNameValues.map[json["UnitName"]],
    categoryName: categoryNameValues.map[json["CategoryName"]],
    brandName: brandNameValues.map[json["BrandName"]],
    modelName: json["ModelName"],
    variantName: json["VariantName"],
    sizeName: json["SizeName"],
    colorName: json["ColorName"],
    oldPrice: json["OldPrice"],
    imagePath: json["ImagePath"],
    productBarcode: json["ProductBarcode"],
    description: descriptionValues.map[json["Description"]],
    childList: List<List<int>>.from(json["ChildList"].map((x) => List<int>.from(x.map((x) => x)))),
    warehouseList: List<dynamic>.from(json["WarehouseList"].map((x) => x)),
    currentStock: json["CurrentStock"],
    createDate: json["CreateDate"],
    updateDate: json["UpdateDate"],
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "Type": type,
    "ParentCode": parentCode,
    "Name": name,
    "Code": code,
    "Price": price,
    "CostPrice": costPrice,
    "UnitName": unitNameValues.reverse[unitName],
    "CategoryName": categoryNameValues.reverse[categoryName],
    "BrandName": brandNameValues.reverse[brandName],
    "ModelName": modelName,
    "VariantName": variantName,
    "SizeName": sizeName,
    "ColorName": colorName,
    "OldPrice": oldPrice,
    "ImagePath": imagePath,
    "ProductBarcode": productBarcode,
    "Description": descriptionValues.reverse[description],
    "ChildList": List<dynamic>.from(childList!.map((x) => List<dynamic>.from(x.map((x) => x)))),
    "WarehouseList": List<dynamic>.from(warehouseList!.map((x) => x)),
    "CurrentStock": currentStock,
    "CreateDate": createDate,
    "UpdateDate": updateDate,
  };
}

enum BrandName { FRRESH, ABC, EMPTY }

final brandNameValues = EnumValues({
  "abc": BrandName.ABC,
  "": BrandName.EMPTY,
  "Frresh": BrandName.FRRESH
});

enum CategoryName { N_A }

final categoryNameValues = EnumValues({
  "=N/A=": CategoryName.N_A
});

enum Description { EMPTY, YESTUVHVH }

final descriptionValues = EnumValues({
  "": Description.EMPTY,
  "yestuvhvh": Description.YESTUVHVH
});

enum UnitName { PCS }

final unitNameValues = EnumValues({
  "PCS": UnitName.PCS
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
