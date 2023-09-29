import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView1(),
  ));
}

class ListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("ListView 1")),
      ),
      body: ListView(
        children: const [
          Card(
              color: Colors.red,
              child: ListTile(
                title: Text("Delhi/india"),
                subtitle: Text("India"),
                trailing: Text("population: 32.9 million"),
                leading: Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTelqF9bhbLNs1u8C0NtvFhNO9QKxhNjJ_W2w&usqp=CAU"),
                ),
              )),
          Card(
            color: Colors.red,
            child: ListTile(
              title: Text("Finland"),
              subtitle: Text("Europe"),
              trailing: Text("population:5.54 million"),
              leading: Image(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfHqlZ-6db6CclkPYJLvN3y82XwPDLbttqtQ&usqp=CAU"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
