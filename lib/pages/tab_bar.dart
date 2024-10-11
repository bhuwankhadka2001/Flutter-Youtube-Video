import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('T A B B A R'),
          backgroundColor: Colors.deepPurple[200],
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.home,
                color: Colors.deepPurple,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person,
                color: Colors.deepPurple,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.settings,
                color: Colors.deepPurple,
              ),
            ),
          ]),
        ),
        body: Expanded(
          child: TabBarView(children: [
            // First tab
            Container(
              color: Colors.blue[200],
              child: const Center(
                child: Text(
                  'H O M E ',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Container(
              color: Colors.yellow[200],
              child: const Center(
                child: Text(
                  'P R O F I L E',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Container(
              color: Colors.purple[100],
              child: const Center(
                child: Text(
                  'S E T T I N G',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
