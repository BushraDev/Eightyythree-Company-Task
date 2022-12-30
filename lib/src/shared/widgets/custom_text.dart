import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomText extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final int? maxLines;
  final TextOverflow? overflow;

  CustomText(this.text,
      {this.style,
      this.textAlign,
      this.textDirection,
      this.maxLines,
      this.overflow});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: Platform.isIOS ? countIosBottomPadding(style!.fontSize!) : 0),
      child: Text(
        text!,
        style: style,
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        overflow: overflow,
      ),
    );
  }

  double countIosBottomPadding(double? fontSize) {
    if (fontSize == 5.h ||
        fontSize == 6.h ||
        fontSize == 7.h ||
        fontSize == 8.h ||
        fontSize == 9.h ||
        fontSize == 10.h ||
        fontSize == 11.h ||
        fontSize == 12.h) return 1.h;
    if (fontSize == 13.h || fontSize == 14.h) return 2.h;
    if (fontSize == 15.h ||
        fontSize == 16.h ||
        fontSize == 17.h ||
        fontSize == 18.h) return 3.h;
    if (fontSize == 19.h ||
        fontSize == 20.h ||
        fontSize == 21.h ||
        fontSize == 22.h) return 4.h;
    return 0;
  }
}
