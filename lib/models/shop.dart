import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/product.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(name: "Product 1", price: 99.99, description: "Item description"),
    Product(name: "Product 1", price: 99.99, description: "Item description"),
    Product(name: "Product 1", price: 99.99, description: "Item description"),
    Product(name: "Product 1", price: 99.99, description: "Item description"),
  ];
  final List<Product> _cart = [];
  List<Product> get shop => _shop;
  List<Product> get cart => _cart;
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
