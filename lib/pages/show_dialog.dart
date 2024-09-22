import 'package:flutter/material.dart';

class MyShowDialog extends StatelessWidget {
  const MyShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green[100]),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => Dialog(
                        backgroundColor: Colors.deepPurple[100],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                "Flutter",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'This is a Dialog Widget',
                                style: TextStyle(fontSize: 20),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    'Cancel',
                                    style: TextStyle(fontSize: 15),
                                  ))
                            ],
                          ),
                        ),
                      ));
            },
            child: const Text(
              "Show Dialog",
              style: TextStyle(fontSize: 20, color: Colors.black),
            )),
      ),
    );
  }
}
