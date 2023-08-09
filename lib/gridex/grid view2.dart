import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: grid_view2(),
  ));
}

class grid_view2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("grid view builder"),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("items"), Icon(Icons.ac_unit)]),
              ),
            );
          }),
    );
  }
}
