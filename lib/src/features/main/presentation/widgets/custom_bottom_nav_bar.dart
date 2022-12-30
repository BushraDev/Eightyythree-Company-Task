import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../shared/assets/app_icons.dart';
import '../../../../shared/themes/app_colors.dart';
import '../../../../shared/themes/app_styles.dart';
import '../../../../shared/themes/app_text_styles.dart';
import '../../../../shared/widgets/custom_text.dart';
import '../../data/models/bottom_nav_bar_item.dart';
import '../controllers/bottom_nav_bar_controller.dart';

class CustomBottomNavBar extends StatelessWidget {

  CustomBottomNavBar({Key? key}) : super(key: key);

  final List<BottomNavBarItem?>? bottomNavBarItems = [
    BottomNavBarItem(
      iconPath: AppIcons.grocery,
      iconHeight: 19.h,
      iconWidth: 23.h,
      label: "Grocery",),
    BottomNavBarItem(
      iconPath: AppIcons.news,
      iconHeight: 22.h,
      iconWidth: 20.h,
      label: "News",),
    BottomNavBarItem(
      iconPath: AppIcons.favorites,
      iconHeight: 19.h,
      iconWidth: 22.h,
      label: "Favorites",),
    BottomNavBarItem(
      iconPath: AppIcons.cart,
      iconHeight: 22.h,
      iconWidth: 22.h,
      label: "Cart",),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(
      bottomNavBarItems!.length,
      (index) => _buildBottomNavBarItem(
        context: context,
        item: bottomNavBarItems![index]!,
        index: index,
      ),
    );
    items.insert(items.length >> 1, _buildBottomNavBarMiddleItem());
    return Container(
      height: 59.h,
      decoration: BoxDecoration(color: AppColors.bottomNavBarColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: items,
      ),
    );
  }

  Widget _buildBottomNavBarMiddleItem() {
    return Expanded(
      child: CustomText(""),
    );
  }

  Widget _buildBottomNavBarItem(
      {required BuildContext context,
      required int index,
      required BottomNavBarItem item}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Get.find<BottomNavBarController>().updateCurrentIndex(index);
        },
        child: GetBuilder<BottomNavBarController>(builder: (controller) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: item.iconHeight,
              width: item.iconWidth,
              child: SvgPicture.asset(
                item.iconPath!,
                color: index == controller.currentIndex ? AppColors.primaryColor : AppColors.captionTextColor,
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            CustomText(
              item.label,
              textAlign: TextAlign.center,
              style: AppTextStyles.subtitle1.copyWith(
                color: index == controller.currentIndex
                    ? AppColors.primaryColor
                    : AppColors.captionTextColor,
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
