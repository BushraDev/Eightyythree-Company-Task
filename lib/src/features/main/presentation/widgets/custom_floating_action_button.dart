import 'package:eightyythree_company_task/src/features/cart/presentation/controllers/cart_controller.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_colors.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../shared/assets/app_icons.dart';
import '../../../../shared/themes/app_styles.dart';
import '../../../../shared/widgets/custom_text.dart';
import '../controllers/bottom_nav_bar_controller.dart';

class CustomFloatingActionButton extends StatelessWidget {

  final BottomNavBarController? bottomNavBarController = Get.find<BottomNavBarController>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          bottom: 22.h,
          child: InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: () {
              bottomNavBarController!.updateCurrentIndex(3);
            },
            child: Container(
              height: 56.h,
              width: 56.h,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: AppStyles.floatingActionButtonBoxShadow),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    child: SvgPicture.asset(AppIcons.cart2, color: Colors.white,
                    height: 34.h,
                    width: 39.h,),
                  ),
                  PositionedDirectional(
                      top: 12.h,
                      start: 14.h,
                      child: GetBuilder<CartController>(builder: (controller) => CustomText("${controller.totalPrice!.toInt()}\$", style: AppTextStyles.subtitle1,),),)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
