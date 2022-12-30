import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'app_styles.dart';
import 'app_text_styles.dart';

class AppInputDecorationThemes{

  static final InputDecoration outlinedTheme = InputDecoration(
    filled: true,
    fillColor: AppColors.inputFieldColor,
    contentPadding: EdgeInsets.all(15.h),
    hintStyle: AppTextStyles.subtitle1.copyWith(color: AppColors.hintColor),
    errorStyle: TextStyle(
        fontSize: 14.h,
        fontWeight: FontWeight.w400,
        color: AppColors.errorColor
    ),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppStyles.radius12)),
        borderSide: BorderSide(color: AppColors.inputFieldBorderColor,
            width: 1.h)
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppStyles.radius12)),
        borderSide: BorderSide(color: AppColors.inputFieldBorderColor,
            width: 1.h)
    ),
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppStyles.radius12)),
        borderSide: BorderSide(color: AppColors.inputFieldBorderColor,
            width: 1.h)
    ),
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppStyles.radius12)),
        borderSide: BorderSide(color: AppColors.inputFieldBorderColor,
            width: 1.h)
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppStyles.radius12)),
        borderSide: BorderSide(color: AppColors.inputFieldBorderColor,
            width: 1.h)
    ),
  );
}