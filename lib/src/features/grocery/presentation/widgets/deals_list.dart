import 'package:eightyythree_company_task/src/features/grocery/presentation/controllers/deals_controller.dart';
import 'package:eightyythree_company_task/src/features/grocery/presentation/widgets/deal_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../shared/themes/app_styles.dart';
import '../../../../shared/widgets/label.dart';

class DealsList extends StatelessWidget {
  DealsList({Key? key}) : super(key: key);

  final DealsController? dealsController =
  Get.find<DealsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: AppStyles.appHorizontalPadding),
          child: Label("Deals of the day"),
        ),
        SizedBox(
          height: 141.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(
                  horizontal: AppStyles.appHorizontalPadding, vertical: AppStyles.appVerticalPadding),
              itemBuilder: (context, index) => DealCard(
                  deal: dealsController!.dealsList![index]),
              separatorBuilder: (context, index) => SizedBox(
                width: 13.h,
              ),
              itemCount: dealsController!.dealsList!.length),
        ),
      ],
    );
  }
}
