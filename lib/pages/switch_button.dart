import 'package:flutter/material.dart';

class MySwitchButton extends StatefulWidget {
  const MySwitchButton({super.key});

  @override
  State<MySwitchButton> createState() => _MySwitchButtonState();
}

class _MySwitchButtonState extends State<MySwitchButton> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple[200],
        title: const Text("S w i t c h   B u t t on"),
      ),
      backgroundColor: Colors.red[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Switch is ${isSwitched ? "ON" : "OF"}',
            style: const TextStyle(fontSize: 25),
          ),
          Center(
            child: Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
              activeColor: Colors.red,
              inactiveThumbColor: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
