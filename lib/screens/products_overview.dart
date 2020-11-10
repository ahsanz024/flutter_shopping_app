import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/providers/cart.dart';
import 'package:flutter_shopping_app/screens/cart_screen.dart';
import 'package:flutter_shopping_app/screens/orders_screen.dart';
import 'package:flutter_shopping_app/widgets/badge.dart';
import 'package:flutter_shopping_app/widgets/main_drawer.dart';
import 'package:flutter_shopping_app/widgets/products_grid.dart';
import 'package:provider/provider.dart';

enum PopupOptions {
  Favourites,
  All,
}

class ProductsOverview extends StatefulWidget {
  static const routeName = "/";

  @override
  _ProductsOverviewState createState() => _ProductsOverviewState();
}

class _ProductsOverviewState extends State<ProductsOverview> {
  bool _showFavourites = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text("Products Overview"),
        actions: [
          PopupMenuButton(
            onSelected: (PopupOptions value) {
              setState(() {
                _showFavourites = value == PopupOptions.Favourites;
              });
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("Show Favourites Only"),
                value: PopupOptions.Favourites,
              ),
              PopupMenuItem(
                child: Text("Show All"),
                value: PopupOptions.All,
              ),
            ],
          ),
          Consumer<Cart>(
            builder: (_, value, ch) {
              return Badge(
                child: ch,
                value: value.itemCount.toString(),
              );
            },
            child: IconButton(
              icon: Icon(Icons.shopping_basket),
              onPressed: () =>
                  Navigator.of(context).pushNamed(CartScreen.routeName),
            ),
          ),
        ],
      ),
      body: ProductsGrid(_showFavourites),
    );
  }
}
