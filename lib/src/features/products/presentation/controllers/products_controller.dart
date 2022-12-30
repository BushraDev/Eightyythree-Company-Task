import 'package:eightyythree_company_task/src/features/grocery/data/models/category.dart';
import 'package:eightyythree_company_task/src/features/products/data/models/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductsController extends GetxController {
  List<Product?> _productsList = [
    Product(
      id: 3,
      name: "Turkish Steak",
      quantity: 173,
      unit: "Grams",
      price: 25,
      color: Color(0xFFF9BDAD),
      categoryId: 1
    ),
    Product(
      id: 4,
      name: "Salmon",
      quantity: 2,
      unit: "Serving",
      price: 30,
      color: Color(0xFFB0EAFD),
        categoryId: 1
    ),
    Product(
      id: 5,
      name: "Red Juice",
      quantity: 1,
      unit: "Bottle",
      price: 25,
      color: Color(0xFFFF9DC2),
        categoryId: 1
    ),
    Product(
      id: 6,
      name: "Cola",
      quantity: 1,
      unit: "Bottle",
      price: 11,
      color: Color(0xFFCCB8FF),
        categoryId: 1
    ),
  ];

  List<Product?> getProductsByCategory(Category? category) =>
      _productsList.where((product) => product!.categoryId == category!.id).toList();
}
