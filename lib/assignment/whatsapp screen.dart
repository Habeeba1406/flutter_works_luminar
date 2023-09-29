import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: whatsapp(),
  ));
}

class whatsapp extends StatelessWidget {
  var name = ["mom", "Abi", "Dad", "Mammu", "Aafi", "Chinnu", "9656173033"];
  var image = [
    "assets/icons/images/profile1.jpeg",
    "assets/icons/images/profile2.jpg",
    "assets/icons/images/photo-1528819622765-d6bcf132f793.jpeg",

    ///"assets/icons/images/card.avif",
    "assets/icons/images/profile3.png",
    "assets/icons/images/profile4.jpeg",
    "assets/icons/images/photo-1528819622765-d6bcf132f793.jpeg",
    "assets/icons/images/profile5.jpeg",
  ];
  var msg = [
    "How do you do",
    "Aa",
    "Did you have ?",
    "okee",
    "Ha",
    "can you email the pic",
    "hi"
  ];
  var tym = [
    "10.53 am",
    "11.11 am",
    "2.36 pm",
    "6.00 pm",
    "11.22 pm",
    "11.44 pm",
    "12.04 am",
  ];
  var msgno = ["1", "1", "3", "1", "2", "1", "1"];

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
