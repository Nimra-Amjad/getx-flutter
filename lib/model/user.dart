// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

import 'package:get/get.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String currencySymbol;
  String date;
  int id;
  String maturityDate;
  int paidAmount;
  int remainingAmount;
  String supplier;
  int totalAmount;
  int totalWeight;
  int weightPerItem;
  var isSelected = false.obs;

  UserModel({
    required this.currencySymbol,
    required this.date,
    required this.id,
    required this.maturityDate,
    required this.paidAmount,
    required this.remainingAmount,
    required this.supplier,
    required this.totalAmount,
    required this.totalWeight,
    required this.weightPerItem,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        currencySymbol: json["currencySymbol"],
        date: json["date"],
        id: json["id"],
        maturityDate: json["maturityDate"],
        paidAmount: json["paidAmount"],
        remainingAmount: json["remainingAmount"],
        supplier: json["supplier"],
        totalAmount: json["totalAmount"],
        totalWeight: json["totalWeight"],
        weightPerItem: json["weightPerItem"],
      );

  Map<String, dynamic> toJson() => {
        "currencySymbol": currencySymbol,
        "date": date,
        "id": id,
        "maturityDate": maturityDate,
        "paidAmount": paidAmount,
        "remainingAmount": remainingAmount,
        "supplier": supplier,
        "totalAmount": totalAmount,
        "totalWeight": totalWeight,
        "weightPerItem": weightPerItem,
      };
}
