// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) => ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  bool? status;
  List<Massage>? massage;

  ProductModel({
    this.status,
    this.massage,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    status: json["status"],
    massage: json["massage"] == null ? [] : List<Massage>.from(json["massage"]!.map((x) => Massage.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "massage": massage == null ? [] : List<dynamic>.from(massage!.map((x) => x.toJson())),
  };
}

class Massage {
  String? id;
  String? name;
  String? productCode;
  String? description;
  String? color;
  String? size;
  String? price;
  String? isPopular;
  String? isNew;
  String? isSpecial;
  String? stock;
  String? image;

  Massage({
    this.id,
    this.name,
    this.productCode,
    this.description,
    this.color,
    this.size,
    this.price,
    this.isPopular,
    this.isNew,
    this.isSpecial,
    this.stock,
    this.image,
  });

  factory Massage.fromJson(Map<String, dynamic> json) => Massage(
    id: json["id"],
    name: json["name"],
    productCode: json["product_code"],
    description: json["description"],
    color: json["color"],
    size: json["size"],
    price: json["price"],
    isPopular: json["isPopular"],
    isNew: json["isNew"],
    isSpecial: json["isSpecial"],
    stock: json["Stock"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "product_code": productCode,
    "description": description,
    "color": color,
    "size": size,
    "price": price,
    "isPopular": isPopular,
    "isNew": isNew,
    "isSpecial": isSpecial,
    "Stock": stock,
    "image": image,
  };
}
