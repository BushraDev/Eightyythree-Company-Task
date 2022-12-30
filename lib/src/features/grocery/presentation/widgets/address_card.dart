import 'package:eightyythree_company_task/src/features/profile/data/models/address.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_colors.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_styles.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_text_styles.dart';
import 'package:eightyythree_company_task/src/shared/widgets/custom_container.dart';
import 'package:eightyythree_company_task/src/shared/widgets/label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../shared/widgets/custom_text.dart';
import '../../../profile/presentation/controllers/addresses_controller.dart';

class AddressCard extends StatelessWidget {

  final Address? address;

  const AddressCard({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.find<AddressesController>().selectAddress(address),
      child: Container(
        height: 109.h,
        width: 167.w,
        padding: EdgeInsetsDirectional.only(start: 6.h, top: 3.h, end: 9.h, bottom: 3.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppStyles.radius12),
          border: Border.all(color: AppColors.addressCardBorderColor, width: 1.h)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomContainer(color: AppColors.addressCardContainerColor, height: 49.h, width: 49.h,),
            SizedBox(width: 9.h,),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Label(address!.title),
                  CustomText(address!.description!, style: AppTextStyles.bodyText2, maxLines: 2,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
