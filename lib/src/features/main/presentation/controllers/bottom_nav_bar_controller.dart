import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBarController extends GetxController {

  int? _currentIndex = 0;

  int? get currentIndex => _currentIndex;

  final PageController? _pageController = PageController();
  PageController? get pageController => _pageController;

  void updateCurrentIndex(int? index){
    _currentIndex = index;
    _pageController!.jumpToPage(_currentIndex!);
    update();
  }
}
