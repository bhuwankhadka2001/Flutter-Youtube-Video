// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[200],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple[300]),
                child: Center(
                  child: Text(
                    "Drawer Header",
                    style: TextStyle(fontSize: 30),
                  ),
                )),
            ListTile(
              leading: Icon(
                Icons.home,
                size: 35,
              ),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 35,
              ),
              title: Text(
                "Setting",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.share,
                size: 35,
              ),
              title: Text(
                "Share",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.info,
                size: 35,
              ),
              title: Text(
                "About Us",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
