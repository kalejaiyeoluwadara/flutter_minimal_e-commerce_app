import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            titleTextStyle: TextStyle(color: Colors.white),
            centerTitle: true,
            title: const Text('TAB BAR'),
          ),
          body: Column(children: [
            const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), child: Text('Home')),
                Tab(icon: Icon(Icons.search), child: Text('Search')),
                Tab(icon: Icon(Icons.add), child: Text('Add')),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    child: const Center(
                      child: Text('Home Page'),
                    ),
                  ),
                  Container(
                    child: const Center(
                      child: Text('Search Page'),
                    ),
                  ),
                  Container(
                    child: const Center(
                      child: Text('Add Page'),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
