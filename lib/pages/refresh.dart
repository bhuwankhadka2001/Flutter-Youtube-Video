import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class MyReIndicator extends StatefulWidget {
  const MyReIndicator({super.key});

  @override
  State<MyReIndicator> createState() => _MyReIndicatorState();
}

class _MyReIndicatorState extends State<MyReIndicator> {
  Future<void> _manageRefresh() async {
    return await Future.delayed((const Duration(seconds: 2)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: LiquidPullToRefresh(
        height: 200,
        color: Colors.green[400],
        onRefresh: _manageRefresh,
        backgroundColor: Colors.black,
        animSpeedFactor: 4,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: 300,
                  color: Colors.green[400],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: 300,
                  color: Colors.green[400],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  height: 300,
                  color: Colors.green[400],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
