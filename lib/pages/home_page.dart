import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/navigate_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: const Text("Homepage"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyNavipage(),
                ));
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.deepOrange[200],
                borderRadius: BorderRadius.circular(10)),
            height: 80,
            width: 250,
            child: const Center(
                child: Text(
              "Next Page",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ),
    );
  }
}
