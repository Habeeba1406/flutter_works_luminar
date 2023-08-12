import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: drawer1(),
  ));
}

class drawer1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile"),
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.redAccent,
                Color.fromARGB(255, 255, 0, 85),
                Color.fromARGB(255, 255, 0, 34)
              ])),
          child: ListView(
            children: [
              SizedBox(
                width: 150,
                height: 50,
              ),
              const ListTile(
                title: Text("Habeeba nazrin"),
                subtitle: Text("habeebanazrin14@gmail.com"),
                trailing: Icon(Icons.close),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(""),
                  radius: 30,
                ),
              ),
              SizedBox(
                width: 100,
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.dashboard_outlined),
                title: Text("Dashboard"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),

              /// ListTile(leading: Icon(Icons.leak_add),)
            ],
          ),
        ),
      ),
    );
  }
}
