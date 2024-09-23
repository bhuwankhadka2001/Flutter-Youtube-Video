import 'package:flutter/material.dart';

class MySnackBAr extends StatelessWidget {
  const MySnackBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[200],
        title: const Text("SnackBar Example"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  action: SnackBarAction(
                      label: "Undo", textColor: Colors.blue, onPressed: () {}),
                  backgroundColor: Colors.purple[100],
                  content: const Row(
                    children: [
                      Icon(Icons.wifi_off),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        "No Internet Connection",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      )
                    ],
                  )));
            },
            child: const Text('Connect WiFi')),
      ),
    );
  }
}
