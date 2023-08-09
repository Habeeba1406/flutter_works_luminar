import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: LotAnim(),
  ));
}

class LotAnim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie"),
      ),
      body: ListView(
        children: [
          Lottie.network(
              "https://lottie.host/f1fc2a75-e359-4f90-9dad-5ee1c2aa5ed1/Qp3r7ljz5A.json")
        ],
      ),
    );
  }
}
