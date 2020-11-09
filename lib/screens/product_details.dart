import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/providers/products.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  static const routeName = "/product-details";

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final product = Provider.of<Products>(
      context,
      listen: false, // If you don't want to rebuild this Widget
    ).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text("${product.title}"),
      ),
    );
  }
}
