import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Hotelhome(),
  ));
}

class Hotelhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        backgroundColor: Colors.lightBlueAccent,
        title: Center(
            child: Text(
          "Type Your Location",
          style: TextStyle(fontSize: 35),
        )),
        actions: [
          Icon(Icons.favorite_border_outlined),
          SizedBox(
            width: 40,
          ),
        ],
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(),
      ),
    );
  }
}
