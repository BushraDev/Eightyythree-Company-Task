import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/shared/di/di.dart' as di;

import 'src/shopping_app.dart';

void main() async{

  // Styling statusBar theme
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
  ),);

  // Call ensureInitialized() to make sure that you have an instance of the WidgetsBinding before calling runApp.
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  // Used to prevent application from changing its orientation and force the layout to stick to "portrait".
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => {
    runApp(ShoppingApp(),),
  });
}