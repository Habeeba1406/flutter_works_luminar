import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: splash2(),
  ));
}

class splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.food_bank_sharp,
              size: 60,
              color: Colors.pink,
            ),
            // Image.asset("assets/icons/food icon.png"),
            Text(
              "Fresh Foods",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent),
            ),
            const Text(
              "Tasty & Healthy",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink),
            )
          ],
        ),
      ),
    );
  }
}
