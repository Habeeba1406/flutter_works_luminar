import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listview_with_builder(),
  ));
}

class listview_with_builder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list view builder"),
      ),
      body: ListView.builder(itemBuilder: (context, Index) {
        return Card(
          child: Center(
            child: Image.asset("assets/icons/computer.png"),
          ),
        );
      }),
    );
  }
}
