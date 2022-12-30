import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../shared/themes/app_styles.dart';
import '../../../profile/presentation/controllers/addresses_controller.dart';
import 'address_card.dart';

class AddressesList extends StatelessWidget {
  AddressesList({Key? key}) : super(key: key);

  final AddressesController? addressesController =
      Get.find<AddressesController>();

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: addressesController!.addressesList!.isNotEmpty,
      child: SizedBox(
        height: 104.h,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(
                horizontal: AppStyles.appHorizontalPadding, vertical: AppStyles.appVerticalPadding),
            itemBuilder: (context, index) => AddressCard(
                address: addressesController!.addressesList![index]),
            separatorBuilder: (context, index) => SizedBox(
                  width: 13.h,
                ),
            itemCount: addressesController!.addressesList!.length),
      ),
    );
  }
}
