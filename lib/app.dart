import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: myapp(),
  ));
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.pentagon,
              size: 40,
              color: Color.fromARGB(255, 173, 83, 189),
            ),
            const Text(
              "L U M I N A R",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 191, 41, 218),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
