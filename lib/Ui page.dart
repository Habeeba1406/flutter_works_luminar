import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: hotelhome(),
  ));
}

class hotelhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220.0),
        child: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          elevation: 0.0,
          backgroundColor: Colors.lightBlueAccent,
        ),
      ),
    );
  }
}
