import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/my_drawer.dart';
import 'package:flutter_application_3/components/my_product_tile.dart';
import 'package:flutter_application_3/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final shop = context.watch<Shop>().shop;

    return Scaffold(
        appBar: AppBar(
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          backgroundColor: Colors.transparent,
          title: const Center(child: Text('Shop Page')),
        ),
        drawer: const MyDrawer(),
        body: ListView(
          children: [
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                'Pick from a selected list of premium products',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                itemCount: shop.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  final product = shop[index];
                  return MyProductTile(
                    product: product,
                  );
                },
              ),
            ),
          ],
        ));
  }
}
