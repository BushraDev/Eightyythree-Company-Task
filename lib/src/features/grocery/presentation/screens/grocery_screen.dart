import 'package:eightyythree_company_task/src/features/grocery/presentation/widgets/deals_list.dart';
import 'package:eightyythree_company_task/src/features/grocery/presentation/widgets/offers_list.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_input_decoration_themes.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_styles.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/assets/app_icons.dart';
import '../../../../shared/widgets/custom_screen.dart';
import '../widgets/addresses_list.dart';
import '../widgets/categories_list.dart';

class GroceryScreen extends StatelessWidget {
  static const String? routeName = "GroceryScreen";

  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      child: SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: AppStyles.appVerticalPadding),
        child: Column(
          children: [
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: AppStyles.appHorizontalPadding),
              child: TextFormField(
                style: AppTextStyles.textFormFieldStyle,
                decoration: AppInputDecorationThemes.outlinedTheme.copyWith(
                  hintText: "Search in thousands of products",
                  prefixIconConstraints: BoxConstraints(maxWidth: 55.53.h),
                  prefixIcon: Padding(
                    padding: EdgeInsetsDirectional.only(start: 16.h, end: 22.h),
                    child: Container(
                      height: 17.52.h,
                      width: 17.53.h,
                      child: SvgPicture.asset(
                        AppIcons.search,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            AddressesList(),
            CategoriesList(),
            DealsList(),
            OffersList()
          ],
        ),
      ),
    );
  }
}
