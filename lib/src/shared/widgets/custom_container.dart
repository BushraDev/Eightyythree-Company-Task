import 'package:eightyythree_company_task/src/shared/themes/app_styles.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {

  final Color? color;
  final double? height;
  final double? width;
  final Widget? child;
  final double? borderRadius;

  const CustomContainer({Key? key, required this.color, required this.height, required this.width, this.child, this.borderRadius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(borderRadius ?? AppStyles.radius12)),
      child: child,
    );
  }
}
