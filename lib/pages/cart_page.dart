import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/my_button.dart';
import 'package:flutter_application_3/components/my_drawer.dart';
import 'package:flutter_application_3/components/my_product_tile.dart';
import 'package:flutter_application_3/models/product.dart';
import 'package:flutter_application_3/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  void removeFromCart(BuildContext context, Product product) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: const Text('Remove Item from your cart?'),
              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<Shop>().removeFromCart(product);
                  },
                  child: const Text('Yes'),
                ),
              ],
            ));
  }

  void payButtonPressed(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              content: Text(
                  'User wants to pay! connect this app to your payment backend'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Cart Page')),
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          Expanded(
            child: cart.isEmpty
                ? const Center(child: Text('Your cart is empty'))
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      final item = cart[index];
                      return ListTile(
                        title: Text(item.name),
                        subtitle: Text(item.price.toStringAsFixed(2)),
                        trailing: IconButton(
                            onPressed: () => removeFromCart(context, item),
                            icon: const Icon(Icons.remove)),
                      );
                    }),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(
                onTap: () => payButtonPressed(context), child: Text('Pay Now')),
          )
        ],
      ),
    );
  }
}
