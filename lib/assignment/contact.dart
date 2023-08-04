import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ContactBook(),
  ));
}

class ContactBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Contact list"),
      ),
      body: ListView(
        children: [
          const Card(
            child: ListTile(
              title: Text("chinnu"),
              subtitle: Text("3902573278"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("nachu"),
              subtitle: Text("9656173033"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("pathu"),
              subtitle: Text("6238374146"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("abi"),
              subtitle: Text("9400173033"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("akku"),
              subtitle: Text("9744021048"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("sana"),
              subtitle: Text("6244675490"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("habi"),
              subtitle: Text("8349757238"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                backgroundColor: Colors.purple,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("mammu"),
              subtitle: Text("809785920"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("hyz"),
              subtitle: Text("8957482578"),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                backgroundColor: Colors.lightBlueAccent,
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
