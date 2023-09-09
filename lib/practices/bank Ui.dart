import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: uidesign(),
  ));
}

class uidesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Welcome..!MAUSAM",
          ),
        ),
      ),
    );
  }
}
