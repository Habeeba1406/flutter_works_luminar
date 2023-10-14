import 'package:flutter/material.dart';
import 'package:flutter_application_1/assignment/todo%20app/home.dart';

void main() {
  runApp(const Todo());
}

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Todohome(),
    );
  }
}
