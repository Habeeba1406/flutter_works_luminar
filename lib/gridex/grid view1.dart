import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: grid_view1(),
  ));
}

class grid_view1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("grid view"),
      ),
      body: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          // gridDelegate:

          /// SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          //
          //  SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 2),
          children: List.generate(
              10,
              (index) => const Card(
                    //color: Colors.deepPurpleAccent,
                    child: Center(
                      child: Image(
                        image: AssetImage(
                          "assets/icons/images/profile1.jpeg",
                        ),
                        alignment: Alignment(40, 40),
                      ),
                    ),
                  ))),
    );
  }
}
