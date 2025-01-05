import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/my_drawer.dart';
import 'package:flutter_application_3/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.transparent,
        title: const Center(child: Text('Shop Page')),
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}
