import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for products...',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Replace with actual number of search results
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text('Product ${index + 1}'),
                    subtitle: Text('Product description'),
                    trailing: Text('\$10'), // Replace with actual price
                    onTap: () {
                      // Navigate to product details page
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
