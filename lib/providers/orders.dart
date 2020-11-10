import 'package:flutter/foundation.dart';
import 'package:flutter_shopping_app/providers/cart.dart';

class OrderItem {
  final String id;
  final List<CartItem> products;
  final DateTime dateTime;
  final double price;

  OrderItem({
    @required this.id,
    @required this.price,
    @required this.dateTime,
    @required this.products,
  });
}

class Orders with ChangeNotifier {
  List<OrderItem> _items = [];

  List<OrderItem> get items {
    return [..._items];
  }

  void addOrder(List<CartItem> items, double price) {
    _items.insert(
      0,
      OrderItem(
        id: DateTime.now().toString(),
        price: price,
        products: items,
        dateTime: DateTime.now(),
      ),
    );
    notifyListeners();
  }
}
