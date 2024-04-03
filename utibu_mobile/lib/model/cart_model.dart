import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Aplevant 0.75mg Injection", "6500.00", "lib/images/dia1.jpg", Colors.blue],
    ["Dapefy 5mg Tablet", "200.00", "lib/images/dia2.jpg", Colors.blue],
    ["Lipaglyn 4mg Tablet", "600.00", "lib/images/dia3/jpg", Colors.blue],
    ["Aldactone T 5mg Tablet", "80.00", "lib/images/hyp1.jpg", Colors.blue],
    ["Cilacar M 10mg/50mg Tablets", "215.00", "lib/images/hyp2.jpg", Colors.blue],
    ["Cilacar TC 12.5mg Tablet", "310.00", "lib/images/hyp3.jpg", Colors.blue],
    ["Ricovir EM Tablet", "2500.00", "lib/images/hv1.jpg", Colors.blue],
    ["Tenvir AF 25mg Tablet", "1700.00", "lib/images/hv2.jpg", Colors.blue],
    ["Spegra Tablet 90's", "13000.00", "lib/images/hv3.jpg", Colors.blue],
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}