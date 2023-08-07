///import 'dart:ffi';
///import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: whatsapp(),
  ));
}

class whatsapp extends StatelessWidget {
  var name = [
    "Habeeba",
    "abi",
    "mammu",
    "aafi",
    "chinnu",
  ];
  var image = [
    "assets/icons/images/profile1.jpeg",
    "assets/icons/images/profile2.jpg",
    "assets/icons/images/profile3.png",
    "assets/icons/images/profile4.jpeg",
    "assets/icons/images/profile5.jpeg",
  ];
  var msg = [
    "How do you do",
    "Aa",
    "Did you have ?",
    "okee",
    "Ha",
  ];
  var tym = [
    "10.53 pm",
    "8.11 pm",
    "2.36 pm",
    "11.00 pm",
    "11.22 pm",
  ];
  var msgno = ["1", "1", "3", "1", "2"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            "whatsapp",
          ),
          actions: [
            Icon(Icons.camera_alt_outlined),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.search),
            const SizedBox(
              width: 20,
            ),
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(child: Text("New group")),
                  const PopupMenuItem(child: Text("New broadcast")),
                  const PopupMenuItem(child: Text("Linked devices")),
                  const PopupMenuItem(child: Text("Starred message")),
                  const PopupMenuItem(child: Text("Payments")),
                  const PopupMenuItem(child: Text("settings")),
                ];
              },
            )
          ],
        ),
        body: ListView(
            children: List.generate(
          5,
          (index) => Card(
            child: ListTile(
              title: Text(name[index]),
              subtitle: Text(msg[index]),
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
              ),
              trailing: Wrap(direction: Axis.vertical, children: [
                Text(tym[index]),
                SizedBox(width: 10),
                Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: CircleAvatar(
                      minRadius: 6,
                      maxRadius: 12,
                      backgroundColor: Colors.teal,
                      child: Text(msgno[index]),
                    )),
              ]),
            ),
          ),
        )));
  }
}
