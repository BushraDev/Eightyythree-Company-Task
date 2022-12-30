import 'package:eightyythree_company_task/src/features/grocery/data/models/category.dart';
import 'package:eightyythree_company_task/src/features/products/presentation/screens/products_screen.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_styles.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_text_styles.dart';
import 'package:eightyythree_company_task/src/shared/widgets/custom_container.dart';
import 'package:eightyythree_company_task/src/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryCard extends StatelessWidget {

  final Category? category;

  const CategoryCard({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 137.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
              borderRadius: BorderRadius.circular(AppStyles.radius12),
              onTap: () => Get.to(ProductsScreen(category: category)),
              child: CustomContainer(color: category!.color, height: 56.h, width: 56.h)),
          SizedBox(height: 10.h,),
          CustomText(category!.name, style: AppTextStyles.subtitle2,)
        ],
      ),
    );
  }
}
