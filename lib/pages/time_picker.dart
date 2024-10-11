import 'package:flutter/material.dart';

class MyTime extends StatefulWidget {
  const MyTime({super.key});

  @override
  State<MyTime> createState() => _MyTimeState();
}

class _MyTimeState extends State<MyTime> {
  late TimeOfDay time;
  _selectTime() async {
    TimeOfDay? picker =
        await showTimePicker(context: context, initialTime: time);

    if (picker != null) {
      setState(() {
        time = picker;
      });
    }
  }

  @override
  void initState() {
    time = TimeOfDay.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: const Text("Time Picker"),
        backgroundColor: Colors.deepPurple[200],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: _selectTime,
                child: const Text(
                  "Show Time",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
