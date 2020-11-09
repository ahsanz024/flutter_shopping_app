import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/widgets/products_grid.dart';

class ProductsOverview extends StatelessWidget {
  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products Overview"),
      ),
      body: ProductsGrid(),
    );
  }
}
