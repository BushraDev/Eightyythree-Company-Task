import '../../../products/data/models/product.dart';

class CartItem extends Product{
  int? itemQuantity;

  CartItem({
    required Product? product,
    required this.itemQuantity})
      : super(id: product!.id, name: product.name, quantity: product.quantity, unit: product.unit, price: product.price, color: product.color);
}