import 'package:flutter/material.dart';

class hiveHome extends StatelessWidget {
  String? email;
  hiveHome({this.email});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $email"),
      ),
    );
  }
}
