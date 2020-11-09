import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/providers/products.dart';
import 'package:flutter_shopping_app/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final productItems = productsData.items;
    return GridView.builder(
      padding: EdgeInsets.all(10),
      itemCount: productItems.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return ProductItem(
          id: productItems[index].id,
          title: productItems[index].title,
          imageUrl: productItems[index].imageUrl,
        );
      },
    );
  }
}
