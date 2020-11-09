import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/providers/products.dart';
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
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
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
        },
      ),
    );
  }
}
