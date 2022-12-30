import 'package:eightyythree_company_task/src/shared/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/themes/app_colors.dart';
import '../../../../shared/widgets/custom_screen.dart';
import '../../../cart/presentation/screens/cart_screen.dart';
import '../../../favorites/presentation/screens/favourites_screen.dart';
import '../../../grocery/presentation/screens/grocery_screen.dart';
import '../../../news/presentation/screens/news_screen.dart';
import '../../../profile/presentation/controllers/addresses_controller.dart';
import '../controllers/bottom_nav_bar_controller.dart';
import '../widgets/custom_bottom_nav_bar.dart';
import '../widgets/custom_floating_action_button.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final AddressesController? addressesController = Get.find<AddressesController>();

  final _pages = [
    const GroceryScreen(),
    const NewsScreen(),
    const FavouritesScreen(),
    const CartScreen()
  ];

  @override
  Widget build(BuildContext context) {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if(addressesController!.addressesList!.isNotEmpty)
        addressesController!.selectAddress(addressesController!.addressesList![0]);
    });
    return CustomScreen(
      statusBarColor: Colors.white,
      scaffoldBackgroundColor: AppColors.bottomNavBarColor,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(),
        body: GetBuilder<BottomNavBarController>(
          builder: (controller) => PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: controller.pageController,
            children: _pages,
            onPageChanged: controller.updateCurrentIndex,
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(),
        floatingActionButton: CustomFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
