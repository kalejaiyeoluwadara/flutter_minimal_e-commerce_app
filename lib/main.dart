import 'package:flutter/material.dart';
import 'package:flutter_application_3/models/shop.dart';
import 'package:flutter_application_3/pages/cart_page.dart';
import 'package:flutter_application_3/pages/intro_page.dart';
import 'package:flutter_application_3/pages/shop_page.dart';
import 'package:flutter_application_3/test_pages/sliver_app_bar.dart';
import 'package:flutter_application_3/test_pages/tab_bar.dart';
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
      title: 'Minimal E-commerce App',
      debugShowCheckedModeBanner: false,
      home: const CustomTabBar(),
      // home: const CustomSliverAppBar(),
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
