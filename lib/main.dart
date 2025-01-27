import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/shop.dart';
import 'package:flutter_application_3/pages/cart_page.dart';
import 'package:flutter_application_3/pages/intro_page.dart';
import 'package:flutter_application_3/pages/shop_page.dart';
import 'package:flutter_application_3/test_pages/test.dart';
import 'package:flutter_application_3/theme/light_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const TestPage(),
      // home: const IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context) => const IntroPage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
