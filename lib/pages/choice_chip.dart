import 'package:flutter/material.dart';

class MyChoiceChip extends StatefulWidget {
  const MyChoiceChip({super.key});

  @override
  State<MyChoiceChip> createState() => _MyChoiceChipState();
}

class _MyChoiceChipState extends State<MyChoiceChip> {
  bool _isSelect = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: const Text('ChoiceChip'),
      ),
      body: Center(
        child: ChoiceChip(
          selectedColor: Colors.red[200],
          // avatar: const Icon(Icons.favorite),
          label: const Text(
            'Education',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          selected: _isSelect,
          onSelected: (value) {
            setState(() {
              _isSelect = value;
            });
          },
        ),
      ),
    );
  }
}
