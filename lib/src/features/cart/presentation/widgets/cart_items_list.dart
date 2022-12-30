import 'package:eightyythree_company_task/src/features/cart/presentation/controllers/cart_controller.dart';
import 'package:eightyythree_company_task/src/features/cart/presentation/widgets/cart_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../shared/themes/app_styles.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      builder: (controller) => ListView.separated(
          padding: EdgeInsets.symmetric(
            horizontal: AppStyles.appHorizontalPadding,),
          itemBuilder: (context, index) => CartItemCard(
              cartItem: controller.cartItemsList![index]),
          separatorBuilder: (context, index) => SizedBox(
            height: 30.h,
          ),
          itemCount: controller.cartItemsList!.length),
    );
  }
}
