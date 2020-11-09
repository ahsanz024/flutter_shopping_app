import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/DUMMY_PRODUCTS.dart';
import 'package:flutter_shopping_app/models/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = DUMMY_PRODUCTS;

  List<Product> get items {
    return [..._items];
  }
}
