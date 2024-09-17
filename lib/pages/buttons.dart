import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // For TextButton

          Center(
              child: SizedBox(
            height: 70,
            width: 150,
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue[200]),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                    side: const WidgetStatePropertyAll(
                        BorderSide(color: Colors.black, width: 3))),
                onPressed: () {},
                child: const Text(
                  "Ready",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
          )),

          const SizedBox(
            height: 50,
          ),

          // For FloatingActionButton

          SizedBox(
            height: 100,
            width: 100,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              backgroundColor: Colors.black,
              onPressed: () {},
              child: const Icon(
                Icons.favorite,
                color: Colors.red,
                size: 50,
              ),
            ),
          ),

          const SizedBox(
            height: 50,
          ),

          //For ElevatedButton

          SizedBox(
            height: 100,
            width: 150,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(Colors.yellow[200]),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                onPressed: () {},
                child: const Text(
                  "UR.Coder",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
          )
        ],
      ),
    );
  }
}
