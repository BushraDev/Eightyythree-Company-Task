import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppStyles{

  AppStyles._();

  static final double appHorizontalPadding = 11.h;
  static final double appVerticalPadding = 20.h;
  static final double radius12 = 12.r;
  static final double blurRadius = 6;
  static final Offset bottomNavBarShadowOffset = Offset(0, -3);
  static final List<BoxShadow> floatingActionButtonBoxShadow = [BoxShadow(
      blurRadius: blurRadius,
      offset: Offset(0, 3),
      color: AppColors.formFieldShadowColor
  )];
  static final List<BoxShadow> containerBoxShadow = [BoxShadow(
      blurRadius: blurRadius,
      offset: Offset(0, 3),
      color: AppColors.formFieldShadowColor
  )];
}