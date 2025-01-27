import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TAB BAR'),
          ),
          body: const Column(children: [
            TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), child: Text('Home')),
                Tab(icon: Icon(Icons.search), child: Text('Search')),
                Tab(icon: Icon(Icons.add), child: Text('Add')),
              ],
            )
          ]),
        ));
  }
}
