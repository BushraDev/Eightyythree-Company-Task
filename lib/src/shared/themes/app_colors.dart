import 'dart:io';

import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static int primaryColorHexCode = 0xFFD93E11;
  static Color primaryColor = Color(primaryColorHexCode);
  static Color primaryColorLight = primaryColor.withOpacity(0.5);
  static const Color secondaryColor = Color(0xFF2B3D54);
  static const Color bottomNavBarColor = Color(0xFFF4F9FA);
  static const Color scaffoldBackgroundColor = Colors.white;
  static const Color primaryTextColor = Color(0xFF424242);
  static Color secondaryTextColor = Color(0xFF464646).withOpacity(0.44);
  static const Color captionTextColor = Color(0xFF949494);
  static const Color disabledTextColor = Color(0xFF929294);
  static const Color borderColor = Color(0xFF707070);
  static const Color hintColor = Color(0xFF474749);
  static const Color inputFieldColor = Color(0xFFF5F7F9);
  static const Color iconColor = Color(0xFFCBCBCB);
  static const Color inputFieldBorderColor = Color(0xFFE0E0E0);
  static const Color addressCardBorderColor = Color(0xFFF1F1F1);
  static const Color addressCardContainerColor = Color(0xFFE3DDD6);
  static const Color controllersColor = Color(0xFFB0EAFD);
  static const Color controllersIconColor = Color(0xFF48B6DA);
  static const Color successColor = Color(0xFF0db14b);
  static const Color errorColor = Color(0xFFEE6A61);
  static const Color red = Color(0xFFB13E55);
  static const Color subTitleColor = Color(0xFF8D97A4);
  static const Color warningColor = Color(0xFFfaa61a);
  static const Color infoColor = Color(0xFF00C0F3);
  static Color shadowColor = Color(0xFFEEEEEE).withAlpha(60);
  static Color formFieldShadowColor = Color(0xFFE0E4EC).withAlpha(16);
  static Color dialogBackgroundColor = primaryTextColor.withOpacity(0.3);
  static Color dividerColor = Color(0xFF8D8D8D).withOpacity(0.1);
  static Color receivedMessageBubbleColor = Color(0xFFEFEFEF);

  static MaterialColor appCustomColor =
  MaterialColor(primaryColorHexCode, appRGBColor);

  static const Map<int, Color> appRGBColor = {
    50: Color.fromRGBO(76, 83, 95, .1),
    100: Color.fromRGBO(76, 83, 95, .2),
    200: Color.fromRGBO(76, 83, 95, .3),
    300: Color.fromRGBO(76, 83, 95, .4),
    400: Color.fromRGBO(76, 83, 95, .5),
    500: Color.fromRGBO(76, 83, 95, .6),
    600: Color.fromRGBO(76, 83, 95, .7),
    700: Color.fromRGBO(76, 83, 95, .8),
    800: Color.fromRGBO(76, 83, 95, .9),
    900: Color.fromRGBO(76, 83, 95, 1),
  };
}
