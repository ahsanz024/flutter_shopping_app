import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/providers/products.dart';
import 'package:flutter_shopping_app/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavs;

  ProductsGrid(this.showFavs);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final productItems =
        showFavs ? productsData.favouriteItems : productsData.items;
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
        // Better to use `ChangeNotifierProvider.value` when using already created objects as provider
        return ChangeNotifierProvider.value(
          // create: (BuildContext context) => productItems[index],
          value: productItems[index], // Alternative syntax
          child: ProductItem(),
        );
      },
    );
  }
}
