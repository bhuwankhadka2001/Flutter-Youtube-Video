import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class MySlidebar extends StatelessWidget {
  const MySlidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 145, 145),
      appBar: AppBar(
        title: const Text('SlideBar'),
        backgroundColor: Colors.orange[200],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 500),
            child: SlideAction(
              innerColor: Colors.red,
              outerColor: Colors.red[200],
              height: 70,
              borderRadius: 20,
              sliderButtonIcon: const Icon(
                Icons.lock_open,
                color: Colors.white,
              ),
              text: 'Slide to Unlock',
              textColor: Colors.black,
              textStyle:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              onSubmit: () {
                return null;
              },
            ),
          ),
        ),
      ),
    );
  }
}
