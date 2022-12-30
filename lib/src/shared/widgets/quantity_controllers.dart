import 'package:eightyythree_company_task/src/shared/themes/app_text_styles.dart';
import 'package:eightyythree_company_task/src/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/app_colors.dart';
import '../themes/app_styles.dart';

class QuantityControllers extends StatefulWidget {
  int? quantity;
  final Function(int? quantity)? onIncrease;
  final Function(int? quantity)? onDecrease;

  QuantityControllers(
      {Key? key,
      required this.quantity,
      required this.onIncrease,
      required this.onDecrease,
      })
      : super(key: key);

  @override
  State<QuantityControllers> createState() => _QuantityControllersState();
}

class _QuantityControllersState extends State<QuantityControllers> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildController(
          onPressed: () {
            setState(() {
              widget.quantity = widget.quantity! - 1;
            });
            widget.onDecrease!(widget.quantity);
          },
            icon: Icon(Icons.minimize, color: AppColors.controllersIconColor, size: 18.h,)
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: CustomText(widget.quantity.toString(), style: AppTextStyles.headline3.copyWith(color: AppColors.primaryTextColor),),
        ),
        buildController(
          onPressed: () {
            setState(() {
              widget.quantity = widget.quantity! + 1;
            });
            widget.onIncrease!(widget.quantity);
          },
          icon: Icon(Icons.add, color: AppColors.controllersIconColor, size: 18.h,)
        )
      ],
    );
  }

  Widget buildController({required VoidCallback? onPressed, required Icon? icon}){
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 33.h,
        width: 33.h,
        decoration: BoxDecoration(
            color: AppColors.controllersColor,
            borderRadius: BorderRadius.circular(AppStyles.radius12)),
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
