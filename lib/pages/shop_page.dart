import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/my_drawer.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          backgroundColor: Colors.transparent,
          title: const Center(child: Text('Shop Page')),
        ),
        drawer: const MyDrawer(),
        body: Container());
  }
}
