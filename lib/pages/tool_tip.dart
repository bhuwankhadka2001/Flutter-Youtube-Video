import 'package:flutter/material.dart';

class MyToolTip extends StatelessWidget {
  const MyToolTip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: const Text("ToolTip"),
      ),
      // body: const Center(
      //   child: Padding(
      //     padding: EdgeInsets.only(bottom: 650),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Tooltip(
      //           message: 'Pause',
      //           child: Icon(
      //             Icons.pause,
      //             size: 50,
      //             color: Colors.blue,
      //           ),
      //         ),
      //         Tooltip(
      //           message: 'Restart',
      //           child: Icon(
      //             Icons.restart_alt,
      //             size: 50,
      //             color: Colors.green,
      //           ),
      //         ),
      //         Tooltip(
      //           message: 'Stop',
      //           child: Icon(
      //             Icons.stop,
      //             size: 50,
      //             color: Colors.red,
      //           ),
      //         ),
      //         Tooltip(
      //           message: 'info',
      //           child: Icon(
      //             Icons.info,
      //             size: 45,
      //             color: Colors.purple,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
