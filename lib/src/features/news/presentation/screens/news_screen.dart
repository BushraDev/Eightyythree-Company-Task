import 'package:flutter/material.dart';

import '../../../../shared/widgets/custom_screen.dart';
import '../../../../shared/widgets/custom_text.dart';

class NewsScreen extends StatelessWidget {
  static const String? routeName = "GroceryScreen";

  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      child: Scaffold(
        body: Center(
          child: CustomText(routeName),
        ),
      ),
    );
  }
}
