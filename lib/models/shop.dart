import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // products list
  final List<Product> _shop = [
    // P1
    Product(
      name: 'Sneakers',
      price: 59.99,
      description: 'Comfortable sneakers for everyday wear.',
      imagePath: 'assets/shoe.jpg',
    ),
    // P2
    Product(
      name: 'Baseball Cap',
      price: 19.99,
      description: 'Stylish cap to keep the sun out of your eyes.',
      imagePath: 'assets/cap.jpg',
    ),
    // P3
    Product(
      name: 'Sunglasses',
      price: 39.99,
      description: 'Fashionable sunglasses for a trendy look.',
      imagePath: 'assets/glasses.jpg',
    ),
    // P4
    Product(
      name: 'Casual Shirt',
      price: 29.99,
      description: 'Casual shirt for a relaxed yet stylish outfit.',
      imagePath: 'assets/shirt.jpg',
    ),
  ];

  // user cart
  final List<Product> _cart = [];

  // getProductList
  List<Product> get shop => _shop;

  // getUserCart
  List<Product> get cart => _cart;

  // addItemToCart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // removeItemFromCart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
