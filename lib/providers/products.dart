import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/DUMMY_PRODUCTS.dart';
import 'package:flutter_shopping_app/providers/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = DUMMY_PRODUCTS;

  Product findById(String id) {
    return _items.firstWhere((product) => product.id == id);
  }

  List<Product> get favouriteItems {
    return _items.where((product) => product.isFavourite).toList();
  }

  List<Product> get items {
    return [..._items];
  }

  void addProduct(Product newProduct) {
    _items.add(newProduct);
    notifyListeners();
  }
}
