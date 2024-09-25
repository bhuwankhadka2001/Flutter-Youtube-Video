import 'package:flutter/material.dart';

class MyRichtext extends StatelessWidget {
  const MyRichtext({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: const TextSpan(
              text: 'Hello',
              style: TextStyle(fontSize: 25, color: Colors.black),
              children: [
                WidgetSpan(
                    child: SizedBox(
                  width: 20,
                )),
                TextSpan(
                    text: 'Flutter',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue)),
                WidgetSpan(
                    child: SizedBox(
                  width: 20,
                )),
                TextSpan(
                    text: 'Developers',
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.red)),
              ]),
        ),
      ),
    );
  }
}
