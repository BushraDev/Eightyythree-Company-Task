
import 'package:get/get.dart';

import '../../features/cart/presentation/controllers/cart_controller.dart';
import '../../features/favorites/presentation/controllers/favourites_controller.dart';
import '../../features/grocery/presentation/controllers/categories_controller.dart';
import '../../features/grocery/presentation/controllers/deals_controller.dart';
import '../../features/grocery/presentation/controllers/offers_controller.dart';
import '../../features/main/presentation/controllers/bottom_nav_bar_controller.dart';
import '../../features/products/presentation/controllers/products_controller.dart';
import '../../features/profile/presentation/controllers/addresses_controller.dart';

Future<void> init() async{
Get.put(BottomNavBarController(), permanent: true);
Get.put(AddressesController(), permanent: true);
Get.put(CategoriesController(), permanent: true);
Get.put(DealsController(), permanent: true);
Get.put(OffersController(), permanent: true);
Get.put(CartController(), permanent: true);
Get.put(ProductsController(), permanent: true);
Get.put(FavouritesController(), permanent: true);

}