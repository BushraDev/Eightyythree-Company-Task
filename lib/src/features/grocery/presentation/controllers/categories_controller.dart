import 'package:eightyythree_company_task/src/features/grocery/data/models/category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesController extends GetxController{
  List<Category?>? _categoriesList = [
    Category(id: 1, name: 'Steak', color: Color(0xFFF9BDAD),),
    Category(id: 2, name: 'Vegetables', color: Color(0xFFFAD96D),),
    Category(id: 3, name: 'Beverages', color: Color(0xFFCCB8FF),),
    Category(id: 4, name: 'Fish', color: Color(0xFFB0EAFD),),
    Category(id: 5, name: 'Juice', color: Color(0xFFFF9DC2),),
  ];

  List<Category?>? get categoriesList => _categoriesList;
}