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
      body: Container(
        child: Column(
          children: [
            Container(
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.fitWidth,
              ),
              height: 300,
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 10),
            ),
            Text(
              "\$${product.price}",
              style: TextStyle(fontSize: 20, color: Colors.grey[500]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${product.description}",
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
