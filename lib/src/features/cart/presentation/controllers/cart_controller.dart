import 'package:eightyythree_company_task/src/features/cart/data/models/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../products/data/models/product.dart';

class CartController extends GetxController {
  Map<int?, CartItem?>? _cartItemsList = {
    3: CartItem(
        product: Product(
          id: 3,
          name: "Turkish Steak",
          quantity: 173,
          unit: "Grams",
          price: 25,
          color: Color(0xFFF9BDAD),
        ),
        itemQuantity: 2),
    4: CartItem(
        product: Product(
          id: 4,
          name: "Salmon",
          quantity: 2,
          unit: "Serving",
          price: 30,
          color: Color(0xFFB0EAFD),
        ),
        itemQuantity: 1),
    5: CartItem(
        product: Product(
          id: 5,
          name: "Red Juice",
          quantity: 1,
          unit: "Bottle",
          price: 25,
          color: Color(0xFFFF9DC2),
        ),
        itemQuantity: 3),
    6: CartItem(
        product: Product(
          id: 6,
          name: "Cola",
          quantity: 1,
          unit: "Bottle",
          price: 11,
          color: Color(0xFFCCB8FF),
        ),
        itemQuantity: 2),
  };

  List<CartItem?>? get cartItemsList => _cartItemsList!.values.toList();

  addItemToCart(CartItem? cartItem) {
    if (_cartItemsList!.containsKey(cartItem!.id)) {
      _cartItemsList!.update(
        cartItem.id!,
        (existingCartItem) => cartItem,
      );
    } else {
      _cartItemsList!.putIfAbsent(
        cartItem.id,
        () => cartItem,
      );
    }
    _totalPrice = _totalPrice! + cartItem.price!;
    update();
  }

  removeItemFromCart(CartItem? cartItem) {
    if (_cartItemsList!.containsKey(cartItem!.id)) {
      if(cartItem.itemQuantity! > 0){
        _cartItemsList!.update(
          cartItem.id!,
              (existingCartItem) {
            existingCartItem!.itemQuantity = cartItem.itemQuantity;
            return existingCartItem;
          },
        );
      }
      else{
        _cartItemsList!.remove(
          cartItem.id!,
        );
      }
      _totalPrice = _totalPrice! - cartItem.price!;
      update();
    }
  }

  double? _totalPrice = 91;

  double? get totalPrice => _totalPrice;
}
