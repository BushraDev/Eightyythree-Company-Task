import 'package:eightyythree_company_task/src/features/favorites/presentation/controllers/favourites_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../shared/themes/app_styles.dart';
import '../../../../shared/widgets/custom_screen.dart';
import '../../../../shared/widgets/custom_text.dart';
import '../../../grocery/presentation/widgets/deal_card.dart';

class FavouritesScreen extends StatelessWidget {
  static const String? routeName = "FavouritesScreen";

  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      child: GetBuilder<FavouritesController>(
        builder: (controller) => ListView.separated(
            padding: EdgeInsets.symmetric(
                horizontal: AppStyles.appHorizontalPadding, vertical: AppStyles.appVerticalPadding),
            itemBuilder: (context, index) => DealCard(
                deal: controller.favouritesList![index]),
            separatorBuilder: (context, index) => SizedBox(
              height: 13.h,
            ),
            itemCount: controller.favouritesList!.length),
      ),
    );
  }
}
