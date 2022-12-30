import 'package:flutter/cupertino.dart';

class Offer{
  int? id;
  String? image;
  double? originalPrice;
  double? discountedPrice;
  String? availability;
  Color? color;

  Offer(
      {
        required this.id,
        required this.image,
        required this.originalPrice,
        required this.discountedPrice,
        required this.availability,
        required this.color,
      });
}