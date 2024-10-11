import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyPercentI extends StatefulWidget {
  const MyPercentI({super.key});

  @override
  State<MyPercentI> createState() => _MyPercentIState();
}

class _MyPercentIState extends State<MyPercentI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularPercentIndicator(
              radius: 150,
              lineWidth: 25,
              percent: 0.7,
              backgroundColor: Colors.red.shade200,
              progressColor: Colors.blue,
              circularStrokeCap: CircularStrokeCap.round,
              animation: true,
              center: const Text(
                '60%',
                style: TextStyle(fontSize: 40),
              ),
            ),
            LinearPercentIndicator(
              lineHeight: 30,
              percent: 0.6,
              progressColor: Colors.blue,
              backgroundColor: Colors.yellow.shade100,
              barRadius: const Radius.circular(25),
              animation: true,
            )
          ],
        ),
      )),
    );
  }
}
