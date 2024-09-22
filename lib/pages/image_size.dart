import 'package:flutter/material.dart';

class ImageSize extends StatelessWidget {
  const ImageSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 250,
                  width: 200,
                  child: ClipOval(
                      child: Image.asset(
                    'assets/images/cr7.png',
                    fit: BoxFit.cover,
                  )),
                ),

                const SizedBox(
                  height: 100,
                ),

                // In circleavatar

                const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images/lm10.png'),
                ),
                const SizedBox(
                  height: 100,
                ),

                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/images/njr.png',
                    height: 150,
                    width: 300,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
