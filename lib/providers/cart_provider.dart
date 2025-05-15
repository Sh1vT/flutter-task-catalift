import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _cart = [];

  List<Map<String, dynamic>> get cart => List.unmodifiable(_cart);

  void addToCart(Map<String, dynamic> item) {
    if (!_cart.any((e) => e['title'] == item['title'])) {
      _cart.add(item);
      notifyListeners();
    }
  }

  void removeFromCart(String title) {
    _cart.removeWhere((item) => item['title'] == title);
    notifyListeners();
  }

  bool contains(String title) {
    return _cart.any((item) => item['title'] == title);
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  int get count => _cart.length;
} 