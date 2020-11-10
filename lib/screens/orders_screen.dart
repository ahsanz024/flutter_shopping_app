import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/providers/orders.dart';
import 'package:flutter_shopping_app/widgets/main_drawer.dart';
import 'package:flutter_shopping_app/widgets/order_list_item.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = "/orders";

  @override
  Widget build(BuildContext context) {
    final orders = Provider.of<Orders>(context, listen: false);
    return Scaffold(
      appBar: AppBar(),
      drawer: MainDrawer(),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return OrderListItem(orders.items[index]);
          },
          itemCount: orders.items.length,
        ),
      ),
    );
  }
}
