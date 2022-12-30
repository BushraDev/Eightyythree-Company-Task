import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'features/main/presentation/screens/main_screen.dart';
import 'shared/themes/app_themes.dart';

class ShoppingApp extends StatefulWidget {
  const ShoppingApp({
    Key? key,
  }) : super(key: key);

  @override
  State<ShoppingApp> createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(designSize:
    Size(Platform.isAndroid ? 375 : 428, Platform.isAndroid ? 791 : 926),
      builder: (BuildContext context, Widget? child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Shopping App",
        home: MainScreen(),
        theme: AppThemes.lightTheme,
        themeMode: ThemeMode.light,
      ),
    );
  }
}
