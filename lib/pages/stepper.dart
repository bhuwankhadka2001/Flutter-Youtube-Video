import 'package:flutter/material.dart';

class MyStepper extends StatefulWidget {
  const MyStepper({super.key});

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stepper"),
        backgroundColor: Colors.blueGrey[300],
        elevation: 0,
      ),
      backgroundColor: Colors.green[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 200),
          child: Stepper(
            steps: const [
              Step(
                  title: Text("Step 1"),
                  content: Text(
                    " __Input Document",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  )),
              Step(title: Text("Step 2"), content: Text("Upload Photo")),
              Step(title: Text("Step 1"), content: Text("Upload Signature")),
            ],
            onStepTapped: (int newindex) {
              setState(() {
                _currentStep = newindex;
              });
            },
            currentStep: _currentStep,

            //For continue
            onStepContinue: () {
              if (_currentStep != 2) {
                setState(() {
                  _currentStep += 1;
                });
              }
            },
            //for cancel
            onStepCancel: () {
              if (_currentStep != 0) {
                setState(() {
                  _currentStep -= 1;
                });
              }
            },
          ),
        ),
      ),
    );
  }
}
