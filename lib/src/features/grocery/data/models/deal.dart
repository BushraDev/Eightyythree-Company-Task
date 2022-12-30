import 'package:eightyythree_company_task/src/features/products/data/models/product.dart';
import 'package:flutter/material.dart';

class Deal extends Product{
  String? distance;
  double? discountedPrice;

  Deal({int? id,
  String? title,
  int? quantity,
  String? unit,
  double? price,
  Color? color, required this.distance,
    required this.discountedPrice,}) : super(id: id, name: title, quantity: quantity, unit: unit, price: price, color: color);
}