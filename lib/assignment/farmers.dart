import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: farmersfresh(),
  ));
}

class farmersfresh extends StatefulWidget {
  @override
  State<farmersfresh> createState() => _farmersfreshState();
}

class _farmersfreshState extends State<farmersfresh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FARMERS  FRESH ZONE",
        ),
        backgroundColor: Color.fromARGB(255, 66, 218, 29),
      ),
    );
  }
}
