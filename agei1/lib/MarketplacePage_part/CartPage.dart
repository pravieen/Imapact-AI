import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Map<String, dynamic>> _cartItems = [
    {"name": "Item 1", "price": 10},
    {"name": "Item 2", "price": 15},
    {"name": "Item 3", "price": 20},
  ];

  double get _totalPrice {
    return _cartItems.fold(0, (total, item) => total + item['price']);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _cartItems.length,
              itemBuilder: (BuildContext context, int index) {
                final item = _cartItems[index];
                return ListTile(
                  title: Text(item["name"]),
                  subtitle: Text("\$${item["price"]}"),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        _cartItems.removeAt(index);
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total:",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$$_totalPrice",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: Text("Order Placed"),
                  content: Text("Thank you for your order!"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _cartItems.clear();
                        });
                        Navigator.of(context).pop();
                      },
                      child: Text("OK"),
                    ),
                  ],
                ),
              );
            },
            child: Text("Place Order"),
          ),
        ],
      ),
    );
  }
}
