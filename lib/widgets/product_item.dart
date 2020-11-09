import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/providers/cart.dart';
import 'package:flutter_shopping_app/providers/product.dart';
import 'package:flutter_shopping_app/screens/product_details.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;

  // const ProductItem({
  //   this.id,
  //   this.title,
  //   this.imageUrl,
  // });

  @override
  Widget build(BuildContext context) {
    // We're loading the product once (for imageUrl and title which don't change) initially with listen: false,
    // Down in fav button we're using a Consumer to update changes by only targetting
    // part of the widget tree that needs to rebuild, and not the whole structure.
    final product = Provider.of<Product>(context, listen: false);
    final cartData = Provider.of<Cart>(context, listen: false);

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(ProductDetails.routeName, arguments: product.id);
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          // Adding a Consumer here to target smaller widget which needs to rebuild with data change.
          leading: Consumer<Product>(
            builder: (context, value, child) => IconButton(
              icon: Icon(
                product.isFavourite ? Icons.favorite : Icons.favorite_border,
              ),
              color: Colors.redAccent,
              onPressed: () {
                product.toggleFavourite();
              },
            ),
          ),
          trailing: IconButton(
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              cartData.addItem(
                product.id,
                product.price,
                product.title,
              );
            },
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
