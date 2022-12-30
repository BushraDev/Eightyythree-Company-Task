import 'package:eightyythree_company_task/src/shared/themes/fonts.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles{

  AppTextStyles._();

  static TextStyle headline6 = TextStyle(
    fontSize: 26.h,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryTextColor,
      fontFamily: AppFonts.poppins
  );
  static TextStyle headline5 = TextStyle(
    fontSize: 24.h,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryTextColor,
      fontFamily: AppFonts.poppins
  );
  static TextStyle headline4 = TextStyle(
    fontSize: 22.h,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryTextColor,
      fontFamily: AppFonts.poppins
  );
  static TextStyle headline3 = TextStyle(
  fontSize: 18.h,
    fontWeight: FontWeight.w700,
    color: AppColors.errorColor,
      fontFamily: AppFonts.poppins
  );
  static TextStyle headline2 = TextStyle(
  fontSize: 16.h,
    fontWeight: FontWeight.w400,
    color: AppColors.secondaryTextColor,
    fontFamily: AppFonts.poppins
  );
  static TextStyle headline1 = TextStyle(
  fontSize: 13.h,
    fontWeight: FontWeight.w700,
    color: AppColors.errorColor,
    fontFamily: AppFonts.poppins
  );
  static TextStyle bodyText1 = TextStyle(
  fontSize: 12.h,
    fontWeight: FontWeight.w500,
    color: AppColors.secondaryColor,
      fontFamily: AppFonts.poppins
  );
  static TextStyle subtitle1 = TextStyle(
  fontSize: 11.h,
    fontWeight: FontWeight.w400,
    color: Colors.white,
      fontFamily: AppFonts.poppins
  );
  static TextStyle subtitle2 = TextStyle(
  fontSize: 10.h,
    fontWeight: FontWeight.w500,
    color: AppColors.hintColor,
      fontFamily: AppFonts.poppins
  );
    static TextStyle bodyText2 = TextStyle(
  fontSize: 9.h,
    fontWeight: FontWeight.w500,
    color: AppColors.hintColor,
        fontFamily: AppFonts.poppins
    );
  static TextStyle caption = TextStyle(
  fontSize: 7.h,
    fontWeight: FontWeight.w400,
    color: AppColors.captionTextColor,
    fontFamily: AppFonts.poppins
  );

  static TextStyle textFormFieldStyle = headline2.copyWith(
    color: AppColors.primaryTextColor
  );
}