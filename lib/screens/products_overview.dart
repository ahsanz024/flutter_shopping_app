import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/DUMMY_PRODUCTS.dart';
import 'package:flutter_shopping_app/models/product.dart';
import 'package:flutter_shopping_app/widgets/product_item.dart';

class ProductsOverview extends StatelessWidget {
  static const routeName = "/";
  final List<Product> _loadedProducts = DUMMY_PRODUCTS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products Overview"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: _loadedProducts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return ProductItem(
            _loadedProducts[index],
          );
        },
      ),
    );
  }
}
