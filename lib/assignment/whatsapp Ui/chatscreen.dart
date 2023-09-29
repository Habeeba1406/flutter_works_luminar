import 'package:flutter/material.dart';

class WhatsappChat extends StatelessWidget {
  var name = [
    "Pathu",
    "Abi",
    "Manu",
    "Dad",
    "Akshay",
    "Aafi",
    "Chinnu",
    "Rahul",
    "Aneesha",
  ];
  var image = [
    "assets/icons/images/profile1.jpeg",
    "assets/icons/images/profile2.jpg",
    "assets/icons/images/blue shade.jpg",
    "assets/icons/images/dp.jpg",
    "assets/icons/images/profile3.png",
    "assets/icons/images/profile4.jpeg",
    "assets/icons/images/dp1.jpg",
    "assets/icons/images/profile5.jpeg",
    "assets/icons/images/cofee.jpg",
  ];
  var msg = [
    "How do you do",
    "plz to check my post",
    "Hey",
    "Did you have ?",
    "okee",
    "What are uh doing",
    "can you email the pic",
    "Everything is good",
    "Do check this website"
  ];
  var tym = [
    "10.53 am",
    "11.11 am",
    "11.15 am",
    "2.36 pm",
    "6.00 pm",
    "11.22 pm",
    "11.44 pm",
    "12.04 am",
    "6.00 am"
  ];
  var msgno = ["1", "1", "1", "3", "1", "2", "1", "1", "1"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: List.generate(
        9,
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
                    backgroundColor: Color(0xff075e54),
                    child: Text(msgno[index]),
                  )),
            ]),
          ),
        ),
      )),
      floatingActionButton: Container(
        width: 70,
        height: 50,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.message),
            backgroundColor: Color(0xff075e54),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
  }
}
