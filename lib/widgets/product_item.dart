import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/models/product.dart';
import 'package:flutter_shopping_app/screens/product_details.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const ProductItem({
    this.id,
    this.title,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(ProductDetails.routeName, arguments: this.id);
          },
          child: Image.network(
            this.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            color: Theme.of(context).accentColor,
            onPressed: () {},
          ),
          trailing: IconButton(
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          title: Text(
            this.title,
            textAlign: TextAlign.center,
          ),
        ),
        // child: Text(this._product.title),
      ),
    );
  }
}
