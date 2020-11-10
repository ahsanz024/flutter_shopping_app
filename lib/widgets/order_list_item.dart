import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/providers/orders.dart';
import 'package:intl/intl.dart';

class OrderListItem extends StatelessWidget {
  final OrderItem order;

  OrderListItem(this.order);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
              title: Text("${this.order.price}"),
              subtitle:
                  Text("${DateFormat.yMEd().format(this.order.dateTime)}"),
              trailing: IconButton(
                icon: Icon(Icons.expand_more),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
