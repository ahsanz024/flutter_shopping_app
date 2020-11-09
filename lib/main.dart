import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/providers/cart.dart';
import 'package:flutter_shopping_app/providers/products.dart';
import 'package:flutter_shopping_app/screens/cart_screen.dart';
import 'package:flutter_shopping_app/screens/product_details.dart';
import 'package:flutter_shopping_app/screens/products_overview.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          // Better to use `ChangeNotifierProvider.create` when using newly created objects
          create: (ctx) => Products(),
        ),
        // Not REcommended to use `value` with new Object
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
      ],
      child: MaterialApp(
        title: 'Shopping App',
        theme: ThemeData(
          primarySwatch: Colors.teal,
          accentColor: Colors.tealAccent,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Lato',
        ),
        home: ProductsOverview(),
        routes: {
          ProductDetails.routeName: (ctx) => ProductDetails(),
          CartScreen.routeName: (ctx) => CartScreen(),
        },
      ),
    );
  }
}
