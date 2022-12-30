import 'package:eightyythree_company_task/src/features/grocery/data/models/offer.dart';
import 'package:eightyythree_company_task/src/shared/assets/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OffersController extends GetxController{
  List<Offer?>? _offersList = [
    Offer(id: 1, image: AppImages.offer1, originalPrice: 32, discountedPrice: 17, availability: "Available until 24 December 2020", color: Color(0xFFFEC8BD))
    ];

  List<Offer?>? get offersList => _offersList;
}