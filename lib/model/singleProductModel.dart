// To parse this JSON data, do
//
//     final singleProductModel = singleProductModelFromJson(jsonString);

import 'dart:convert';

SingleProductModel singleProductModelFromJson(String str) => SingleProductModel.fromJson(json.decode(str));

String singleProductModelToJson(SingleProductModel data) => json.encode(data.toJson());

class SingleProductModel {
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

  SingleProductModel({
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

  factory SingleProductModel.fromJson(Map<String, dynamic> json) => SingleProductModel(
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
