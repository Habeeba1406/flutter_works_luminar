import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridview_count(),
  ));
}

class gridview_count extends StatelessWidget {
  const gridview_count({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid view count"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
            20,
            (index) => Card(
                  child: Center(
                    child: Text("hello"),
                  ),
                )),
      ),
    );
  }
}
