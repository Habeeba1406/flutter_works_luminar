import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listview_custom(),
  ));
}

class listview_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("list view custom"),
      ),
      body: ListView.custom(
          childrenDelegate:
              SliverChildBuilderDelegate((context, index) => Text("hi"))),
    );
  }
}
