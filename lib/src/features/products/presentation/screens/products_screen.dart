import 'package:eightyythree_company_task/src/features/cart/data/models/cart_item.dart';
import 'package:eightyythree_company_task/src/shared/themes/app_text_styles.dart';
import 'package:eightyythree_company_task/src/shared/widgets/custom_app_bar.dart';
import 'package:eightyythree_company_task/src/shared/widgets/custom_screen.dart';
import 'package:eightyythree_company_task/src/shared/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../shared/themes/app_styles.dart';
import '../../../cart/presentation/widgets/cart_item_card.dart';
import '../../../grocery/data/models/category.dart';
import '../controllers/products_controller.dart';

class ProductsScreen extends StatelessWidget {

  final Category? category;

  const ProductsScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      child: Scaffold(
        appBar: CustomAppBar(child: Center(child: CustomText("Products", style: AppTextStyles.headline4,),),),
        body: GetBuilder<ProductsController>(
          builder: (controller) => ListView.separated(
              padding: EdgeInsets.symmetric(
                horizontal: AppStyles.appHorizontalPadding,),
              itemBuilder: (context, index) => CartItemCard(
                  cartItem: CartItem(product: controller.getProductsByCategory(category)[index], itemQuantity: 0)),
              separatorBuilder: (context, index) => SizedBox(
                height: 30.h,
              ),
              itemCount: controller.getProductsByCategory(category).length),
        ),
      ),
    );
  }
}
