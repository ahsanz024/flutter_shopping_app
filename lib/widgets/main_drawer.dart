import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/screens/orders_screen.dart';
import 'package:flutter_shopping_app/screens/products_overview.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            title: Text("Shopping App"),
            automaticallyImplyLeading: false,
          ),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Icon(Icons.ad_units),
            title: Text("Products"),
            onTap: () {
              if (ModalRoute.of(context).settings.name !=
                  ProductsOverview.routeName) {
                Navigator.of(context)
                    .pushReplacementNamed(ProductsOverview.routeName);
              } else {
                Navigator.of(context).pop();
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.store),
            title: Text("Orders"),
            onTap: () {
              if (ModalRoute.of(context).settings.name !=
                  OrdersScreen.routeName) {
                Navigator.of(context)
                    .pushReplacementNamed(OrdersScreen.routeName);
              } else {
                Navigator.of(context).pop();
              }
            },
          ),
        ],
      ),
    );
  }
}
