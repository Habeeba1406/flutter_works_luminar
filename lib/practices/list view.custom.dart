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
            childrenDelegate: SliverChildListDelegate(List.generate(
                100,
                (index) => const Card(
                      child: Text("hello"),
                    )))));
  }
}
