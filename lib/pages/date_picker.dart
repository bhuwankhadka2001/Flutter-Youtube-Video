import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({super.key});

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime date = DateTime.now();
  void _selectDate() async {
    DateTime? datepicker = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(1990),
        lastDate: DateTime(2025));

    if (datepicker != null && datepicker != date) {
      setState(() {
        date = datepicker;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: _selectDate,
                child: const Text(
                  "Show Date",
                  style: TextStyle(fontSize: 20),
                )),

            // To Display Date

            Text(date.toString()),
          ],
        ),
      ),
    );
  }
}
