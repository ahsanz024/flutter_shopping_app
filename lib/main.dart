import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/screens/products_overview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.tealAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Lato',
      ),
      home: ProductsOverview(),
      routes: {
        // ProductsOverview.routeName: (ctx) => ProductsOverview(),
      },
    );
  }
}
