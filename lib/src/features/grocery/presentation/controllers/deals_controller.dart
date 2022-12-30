import 'package:eightyythree_company_task/src/features/grocery/data/models/deal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DealsController extends GetxController{
  List<Deal?>? _dealsList = [
    Deal(id: 1, title: "Summer Sun Ice Cream Pack", quantity: 5, unit: "pieces", distance: "15 Minutes Away", price: 18, discountedPrice: 12, color: Color(0xFFFBEDD8),),
    Deal(id: 2, title: "Yemeni Coffee", quantity: 250, unit: "Gram", distance: "45 Minutes Away", price: 10, discountedPrice: 8, color: Color(0xFF28D193).withAlpha(22),),
  ];

  List<Deal?>? get dealsList => _dealsList;
}