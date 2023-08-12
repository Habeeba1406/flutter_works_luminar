import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: drawerex(),
  ));
}

class drawerex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My profile"),
      ),
      drawer: Drawer(
          child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/icons/images/blue shade.jpg"))),
            accountName: Text("Habeeba nazrin"),
            accountEmail: Text("habeebanazrin14@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("assets/icons/images/profile2.jpg"),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage:
                    AssetImage("assets/icons/images/profile1.jpeg"),
              ),
              CircleAvatar(
                backgroundImage:
                    AssetImage("assets/icons/images/profile5.jpeg"),
              )
            ],
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("about"),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Help"),
          )
        ],
      )),
    );
  }
}
