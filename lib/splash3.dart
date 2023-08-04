import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginpage.dart';

///import 'loginpage.dart';

void main() {
  runApp(MaterialApp(
    home: splash3(),
  ));
}

class splash3 extends StatefulWidget {
  @override
  State<splash3> createState() => splash3state();
}

class splash3state extends State<splash3> {
  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => loginPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/icons/computer.png"),
      ),
    );
  }
}
