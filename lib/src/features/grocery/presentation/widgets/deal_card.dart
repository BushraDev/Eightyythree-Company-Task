import 'package:eightyythree_company_task/src/features/favorites/presentation/controllers/favourites_controller.dart';
import 'package:eightyythree_company_task/src/features/grocery/data/models/deal.dart';
import 'package:eightyythree_company_task/src/shared/assets/app_icons.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_colors.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_text_styles.dart';
import 'package:eightyythree_company_task/src/shared/widgets/custom_container.dart';
import 'package:eightyythree_company_task/src/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DealCard extends StatelessWidget {
  final Deal? deal;

  DealCard({Key? key, required this.deal}) : super(key: key);

  final FavouritesController? favouritesController = Get.find<FavouritesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.h,
      width: 280.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: AlignmentDirectional.topStart,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(top: 6.h,
                  start: 6.h,),
                child: CustomContainer(
                    color: deal!.color, height: 90.h, width: 90.h),
              ),
              Stack(
                children: [InkWell(
              borderRadius: BorderRadius.circular(100),
                  onTap: ()=> favouritesController!.addDealToFavourites(deal),
                  child: Container(
                    height: 24.h,
                    width: 24.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 8.w,
                      top: 11.h,),
                    child: GetBuilder<FavouritesController>(
                      builder: (controller) => SvgPicture.asset(
                        controller.favouritesList!.contains(deal!) ?
                            AppIcons.favouriteFilled :
                        AppIcons.favorites,
                        height: 8.h,
                        width: 9.h,
                        color:
                        controller.favouritesList!.contains(deal!) ?
                        AppColors.errorColor
                        : AppColors.iconColor,
                      ),
                    ),
                  ),],
              ),
            ],
          ),
          SizedBox(width: 13.h,),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                CustomText(
                  deal!.name,
                  style: AppTextStyles.subtitle2.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                CustomText(
                  deal!.quantity!.toString() + " ${deal!.unit!}",
                  style: AppTextStyles.subtitle2,
                ),
                Spacer(),
                Row(
                  children: [
                    SvgPicture.asset(
                      AppIcons.location,
                      height: 8.h,
                      width: 6.h,
                      color: AppColors.hintColor,
                    ),
                    SizedBox(
                      width: 10.h,
                    ),
                    CustomText(
                      deal!.distance,
                      style: AppTextStyles.subtitle2
                          .copyWith(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    CustomText(
                      deal!.discountedPrice!.toString() + " \$",
                      style: AppTextStyles.headline1,
                    ),
                    SizedBox(
                      width: 14.h,
                    ),
                    CustomText(
                      deal!.price!.toString() + " \$",
                      style: AppTextStyles.headline1.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.secondaryTextColor,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
