import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/product.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  final VoidCallback onAddToCart;

  const MyProductTile({
    super.key,
    required this.product,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.name,
            ),
            const SizedBox(height: 8),
            Text(product.description),
            const SizedBox(height: 8),
            Text(
              "\$${product.price.toStringAsFixed(2)}",
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: onAddToCart,
              child: const Text("Add to Cart"),
            ),
          ],
        ),
      ),
    );
  }
}
