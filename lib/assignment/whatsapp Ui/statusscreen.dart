import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  var name = [
    "My status",
    "Abi",
    "Aneesha",
    "Rahul",
    "Pathu",
    "Aafi",
  ];
  var tym = [
    "1 minutes ago",
    "5 minutes ago",
    "8 minutes ago",
    "20 minutes ago",
    "Today,8.44 pm",
    "Today,9.44 am",
  ];
  var image = [
    "assets/icons/images/pic.jpg",
    "assets/icons/images/pic2.jpg",
    "assets/icons/images/pic4.jpg",
    "assets/icons/images/pic5.jpg",
    "assets/icons/images/pizza.jpg",
    "assets/icons/images/watermelon.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: List.generate(
            6,
            (index) => Card(
                child: ListTile(
              title: Text(name[index]),
              subtitle: Text(tym[index]),
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
              ),
            )),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.grey,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            mini: true,
            child: Icon(Icons.edit),
          ),
          SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xff075e54),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            mini: true,
            elevation: 2.0,
            child: Icon(Icons.photo_camera),
          ),
        ],
      ),
    );
  }
}
