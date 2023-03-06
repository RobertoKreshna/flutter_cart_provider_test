import 'package:flutter/material.dart';

import 'item.dart';

class Cart with ChangeNotifier {
  final List<Item> items = [];
  final List<Item> cartItems = [];

  List<Item> get allItem => items;
  List<Item> get allCartItem => cartItems;

  set items(List<Item> items) {
    this.items = items;
    notifyListeners();
  }

  String calculateItems() {
    double total = 0;
    for (var item in cartItems) {
      total += item.price;
    }
    return total.toString();
  }

  void add(Item item) {
    cartItems.add(item);
    notifyListeners();
  }

  void remove(Item item) {
    cartItems.remove(item);
    notifyListeners();
  }
}
