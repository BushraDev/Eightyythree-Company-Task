import 'package:eightyythree_company_task/src/shared/assets/app_icons.dart';
import 'package:eightyythree_company_task/src/shared/assets/app_images.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_colors.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_styles.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_text_styles.dart';
import 'package:eightyythree_company_task/src/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../features/profile/presentation/controllers/addresses_controller.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? child;

  CustomAppBar({Key? key, this.title, this.child,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 79.h,
      padding: EdgeInsets.symmetric(horizontal: AppStyles.appHorizontalPadding),
      child: child ?? Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              Image.asset(AppImages.locationBackground, height: 34.h, width: 122.95.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.h),
                child: Row(
                  children: [
                    SvgPicture.asset(AppIcons.location, height: 16.h, width: 12.h,),
                    SizedBox(width: 7.h,),
                    GetBuilder<AddressesController>(builder: (controller) => CustomText(controller.selectedAddress!.street, style: AppTextStyles.subtitle1.copyWith(fontWeight: FontWeight.w500),),),
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 34.h,
            width: 34.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: AppColors.borderColor, width: 1.h)
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(79.h);
}
