import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: gridview_extents(),
  ));
}

class gridview_extents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("grid view"),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 4,
        children: List.generate(
            20,
            (index) => Card(
                  child: Center(
                    child: Text("heloo"),
                  ),
                )),
      ),
    );
  }
}
