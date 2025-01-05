import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/my_drawer.dart';
import 'package:flutter_application_3/components/my_product_tile.dart';
import 'package:flutter_application_3/models/product.dart';
import 'package:flutter_application_3/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final shop = context.watch<Shop>();

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.transparent,
        title: const Center(child: Text('Shop Page')),
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
        itemCount: shop.shop.length,
        itemBuilder: (context, index) {
          final product = shop.shop[index];
          return MyProductTile(
            product: product,
            onAddToCart: () {
              shop.addToCart(product);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("${product.name} added to cart!")),
              );
            },
          );
        },
      ),
    );
  }
}
