// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Appbar"),
        backgroundColor: Colors.deepPurple[200],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/cartoon.png"),

            //for network image

            Image.network(
                'https://www.fabionodariphoto.com/wp-content/uploads/2022/11/cute-cthulu-1024x1024.jpg'),

            Image.network(
                'https://img.freepik.com/premium-photo/art-work-design_439318-2006.jpg')
          ],
        ),
      ),
    );
  }
}
