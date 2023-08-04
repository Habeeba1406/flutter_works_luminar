import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: splash2(),
  ));
}

class splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/icons/images/background image.png"))),
        child: const Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.food_bank_sharp,
              size: 50,
              color: Colors.white,
            ),
            Text(
              " fresh foods...!",
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            ),
            Text(
              "Tasty and Healthy",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.white),
            )
          ],
        )),
      ),
    );
  }
}
