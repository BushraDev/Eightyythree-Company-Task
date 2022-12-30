import 'package:eightyythree_company_task/src/features/cart/presentation/widgets/cart_items_list.dart';
import 'package:flutter/material.dart';

import '../../../../shared/widgets/custom_screen.dart';

class CartScreen extends StatelessWidget {
  static const String? routeName = "CartScreen";

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      child: CartItemsList(),
    );
  }
}
