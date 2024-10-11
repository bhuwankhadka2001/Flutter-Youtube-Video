import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _sliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: const Text('S L I D E R'),
        backgroundColor: Colors.deepOrange[100],
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Volume: ${_sliderValue.toStringAsFixed(1)}',
              style: const TextStyle(fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 500),
              child: Slider(
                  activeColor: Colors.red,
                  // inactiveColor: Colors.blue,
                  min: 0.0,
                  max: 100.0,
                  divisions: 10,
                  label: _sliderValue.round().toString(),
                  value: _sliderValue,
                  onChanged: (double value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  }),
            )
          ],
        ),
      ),
    );
  }
}
