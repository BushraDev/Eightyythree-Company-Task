import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../themes/app_colors.dart';
import 'app_text_styles.dart';
import 'fonts.dart';

ThemeData appLightTheme = ThemeData(
  primarySwatch: AppColors.appCustomColor,
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
  primaryColor: AppColors.primaryColor,
  colorScheme: ThemeData.light().colorScheme.copyWith(secondary: AppColors.primaryColor),
  disabledColor: AppColors.captionTextColor,
  hintColor: AppColors.hintColor,
  shadowColor: AppColors.shadowColor,
  fontFamily: AppFonts.poppins,
  dividerTheme: DividerThemeData(color: AppColors.dividerColor, thickness: 1.h),
  textTheme: TextTheme(
    headline6: AppTextStyles.headline6,
    headline5: AppTextStyles.headline5,
    headline4: AppTextStyles.headline4,
    headline3: AppTextStyles.headline3,
    headline2: AppTextStyles.headline3,
    headline1: AppTextStyles.headline2,
    bodyText1: AppTextStyles.headline1,
    subtitle1: AppTextStyles.subtitle1,
    subtitle2: AppTextStyles.subtitle1,
    bodyText2: AppTextStyles.subtitle1,
    caption: AppTextStyles.caption,
  ),
  textSelectionTheme: TextSelectionThemeData(cursorColor: AppColors.primaryColor,
      selectionHandleColor: AppColors.primaryColor,
      selectionColor: AppColors.primaryColorLight)
);
