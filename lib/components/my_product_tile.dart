import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/product.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Icon(Icons.favorite),
          Text(product.name),
          Text(product.description),
          Text(product.price.toStringAsFixed(2)),
        ],
      ),
    );
  }
}
