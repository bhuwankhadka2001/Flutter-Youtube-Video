import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: const Text('Flutter Card'),
        backgroundColor: Colors.yellow[300],
      ),
      body: Center(
        child: Card(
          elevation: 12,
          shadowColor: Colors.black,
          color: Colors.white,
          margin: const EdgeInsets.all(15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: SizedBox(
            height: 400,
            width: 300,
            child: Column(
              children: [
                Image.asset('assets/images/shoe.png'),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Adidas Running Shoes',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$80.99',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.yellow,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
