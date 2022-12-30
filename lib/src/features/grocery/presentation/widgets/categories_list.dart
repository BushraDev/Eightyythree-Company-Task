import 'package:eightyythree_company_task/src/features/grocery/presentation/widgets/category_card.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_colors.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_text_styles.dart';
import 'package:eightyythree_company_task/src/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../shared/themes/app_styles.dart';
import '../../../../shared/widgets/label.dart';
import '../controllers/categories_controller.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({Key? key}) : super(key: key);

  final CategoriesController? categoriesController =
  Get.find<CategoriesController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: AppStyles.appHorizontalPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Label("Explore by Category"),
              CustomText("See All (36)", style: AppTextStyles.bodyText2.copyWith(color: AppColors.disabledTextColor),)
            ],
          ),
        ),
        Container(
          height: 132.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding:
              EdgeInsets.symmetric(horizontal: AppStyles.appHorizontalPadding, vertical: AppStyles.appVerticalPadding),
              itemBuilder: (context, index) => CategoryCard(
                  category: categoriesController!.categoriesList![index]),
              separatorBuilder: (context, index) => SizedBox(
                width: 25.h,
              ),
              itemCount: categoriesController!.categoriesList!.length),
        ),
      ],
    );
  }
}
