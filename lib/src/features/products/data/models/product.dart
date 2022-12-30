import 'package:eightyythree_company_task/src/features/grocery/data/models/category.dart';
import 'package:flutter/material.dart';

class Product{
  int? id;
  String? name;
  int? quantity;
  String? unit;
  double? price;
  Color? color;
  int? categoryId;

  Product({required this.id, required this.name, required this.quantity, required this.unit, required this.price,
    required this.color, this.categoryId});
}