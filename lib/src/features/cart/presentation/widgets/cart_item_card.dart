import 'package:eightyythree_company_task/src/features/cart/presentation/controllers/cart_controller.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_colors.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_text_styles.dart';
import 'package:eightyythree_company_task/src/shared/themes/fonts.dart';
import 'package:eightyythree_company_task/src/shared/widgets/custom_container.dart';
import 'package:eightyythree_company_task/src/shared/widgets/custom_text.dart';
import 'package:eightyythree_company_task/src/shared/widgets/quantity_controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../data/models/cart_item.dart';

class CartItemCard extends StatelessWidget {

  final CartItem? cartItem;
  CartItemCard({Key? key, required this.cartItem}) : super(key: key);

  final CartController? cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomContainer(color: cartItem!.color, height: 56.h, width: 56.h),
          SizedBox(width: 25.h,),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(cartItem!.name, style: AppTextStyles.bodyText1,),
              Spacer(),
              CustomText("${cartItem!.quantity!} ${cartItem!.unit!}", style: AppTextStyles.bodyText2.copyWith(color: AppColors.subTitleColor),),
              Spacer(),
              CustomText(cartItem!.price!.toInt().toString() + " \$", style: AppTextStyles.headline3.copyWith(
                color: AppColors.red,
                fontWeight: FontWeight.w500,
                fontFamily: AppFonts.circularStd
              ),),
            ],
          ),
          Spacer(),
          QuantityControllers(
            quantity: cartItem!.itemQuantity,
            onIncrease: (quantity) {
            cartItem!.itemQuantity = quantity;
            cartController!.addItemToCart(cartItem);
          },onDecrease: (quantity) {
            cartItem!.itemQuantity = quantity;
            cartController!.removeItemFromCart(cartItem);
          },)
        ],
      ),
    );
  }
}
