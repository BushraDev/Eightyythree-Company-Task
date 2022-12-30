import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';
import 'custom_text.dart';

class Label extends StatelessWidget {
  final String? labelText;

  const Label(this.labelText, {Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomText(
      labelText!,
      style: AppTextStyles.subtitle1
          .copyWith(fontWeight: FontWeight.bold, color: AppColors.hintColor),
    );
  }
}
