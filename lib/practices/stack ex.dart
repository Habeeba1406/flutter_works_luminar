import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: stackex(),
  ));
}

class stackex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("stack example"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage("assets/icons/images/card.avif"),
                    ))),
            const Positioned(
              left: 20,
              top: 20,
              child: Text(
                "HABEEBA NAZRIN",
                style: TextStyle(
                    color: Colors.white70, fontWeight: FontWeight.bold),
              ),
            ),
            const Positioned(
              right: 30,
              bottom: 30,
              child: Text(
                "1247 4732 7643",
                style: TextStyle(
                    color: Colors.white70, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
