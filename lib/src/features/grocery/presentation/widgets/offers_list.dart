import 'package:eightyythree_company_task/src/features/grocery/presentation/widgets/offer_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../shared/themes/app_styles.dart';
import '../controllers/offers_controller.dart';

class OffersList extends StatelessWidget {
  OffersList({Key? key}) : super(key: key);

  final OffersController? offersController =
  Get.find<OffersController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 126.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(
              horizontal: AppStyles.appHorizontalPadding,),
          itemBuilder: (context, index) => OfferCard(
              offer: offersController!.offersList![index]),
          separatorBuilder: (context, index) => SizedBox(
            width: 13.h,
          ),
          itemCount: offersController!.offersList!.length),
    );
  }
}
