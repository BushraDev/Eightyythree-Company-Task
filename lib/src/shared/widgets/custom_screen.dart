import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../themes/app_colors.dart';

class CustomScreen extends StatelessWidget {
  final Widget? child;
  final Color? statusBarColor;
  final Color? scaffoldBackgroundColor;

  CustomScreen(
      {Key? key,
      required this.child,
      this.statusBarColor,
      this.scaffoldBackgroundColor = AppColors.scaffoldBackgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  color: statusBarColor ?? Colors.white,
                ),
              ),
              Expanded(
                child: Container(
                  color: scaffoldBackgroundColor,
                ),
              ),
            ],
          ),
          SafeArea(
            //top: Platform.isIOS ? false : true,
            child: child!,)
        ],
      ),
    );
  }
}
