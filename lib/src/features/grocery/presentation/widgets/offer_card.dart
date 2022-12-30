import 'package:eightyythree_company_task/src/features/grocery/data/models/offer.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_text_styles.dart';
import 'package:eightyythree_company_task/src/shared/widgets/custom_container.dart';
import 'package:eightyythree_company_task/src/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferCard extends StatelessWidget {
  final Offer? offer;

  OfferCard({Key? key, required this.offer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: offer!.color,
      height: 131.h,
      width: MediaQuery.of(context).size.width - 22.w,
      child: Padding(
        padding: EdgeInsets.only(top: 18.h, bottom: 10.h),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Container()),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    offer!.image!,
                    height: 50.h,
                    width: 153.57.h,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustomText('${offer!.discountedPrice} \$', style: AppTextStyles.headline3,),
                      SizedBox(width: 36.h,),
                      CustomText('${offer!.originalPrice} \$', style: AppTextStyles.headline3.copyWith(fontWeight: FontWeight.w400, color: Colors.white, decoration: TextDecoration.lineThrough),),
                      ],
                  ),
                  Spacer(),
                  CustomText('* ${offer!.availability}', style: AppTextStyles.bodyText2.copyWith(color: Colors.white,),),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
