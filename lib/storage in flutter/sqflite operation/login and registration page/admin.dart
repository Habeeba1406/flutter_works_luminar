import 'package:flutter/material.dart';

class admin extends StatefulWidget {
  const admin({super.key});

  @override
  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {
  List<Map<String, dynamic>> data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin panel'),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, int index) {
            return Card(
              color: Colors.deepPurpleAccent[200],
              child: ListTile(
                title: Text('${data[index]['name']}'),
                subtitle: Text($data[index]['id']),
              ),
            );
          }),
    );
  }
}
