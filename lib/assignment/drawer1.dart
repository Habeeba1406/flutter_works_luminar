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
                Color.fromARGB(255, 247, 164, 153),
                Color.fromARGB(255, 253, 121, 80),
                Color.fromARGB(255, 248, 46, 11)
              ])),
          child: ListView(
            children: [
              SizedBox(
                width: 150,
                height: 50,
              ),
              const ListTile(
                title: Text(
                  "Habeeba nazrin",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "habeeba14@gmail.com",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.close),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbjLFAQtW5NJQl4QC0eTzT65vuNnTCPcxC-A&usqp=CAU"),
                  radius: 35,
                ),
              ),
              SizedBox(
                width: 100,
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text("people"),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Favorite"),
              ),
              ListTile(
                leading: Icon(Icons.dashboard_outlined),
                title: Text("Dashboard"),
              ),
              ListTile(
                leading: Icon(Icons.category),
                title: Text("Category"),
              ),
              ListTile(
                leading: Icon(
                  Icons.payment_outlined,
                ),
                title: Text("payment"),
              ),
              ListTile(
                leading: Icon(Icons.library_add),
                title: Text("Library"),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notification"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
