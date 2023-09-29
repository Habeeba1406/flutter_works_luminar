import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  var cname = [
    "Pathu",
    "Hyz",
    "9400173033",
    "9400173033",
    "Hyz",
    "9400173033",
    "Hyz",
    "Abi",
  ];
  var ctime = [
    "Yesterday, 7:50 AM",
    "Yesteday, 10:20 AM",
    "August 12, 7:14 PM",
    "August 6, 10:23 AM",
    "July 30, 8:36 PM",
    "July 28, 6:56 PM",
    "July 25, 11:23 AM",
    "July 21, 10:53 AM",
  ];

  var cimage = [
    "assets/icons/images/profile1.jpeg",
    "assets/icons/images/profile5.jpeg",
    "assets/icons/images/pic5.jpg",
    "assets/icons/images/pic5.jpg",
    "assets/icons/images/profile5.jpeg",
    "assets/icons/images/pic5.jpg",
    "assets/icons/images/profile5.jpeg",
    "assets/icons/images/profile2.jpg",
  ];

  var cicons = [
    Icons.videocam,
    Icons.call,
    Icons.videocam,
    Icons.call,
    Icons.videocam,
    Icons.videocam,
    Icons.call,
    Icons.videocam,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: List.generate(
              8,
              (index) => Card(
                    child: ListTile(
                      title: Text(cname[index]),
                      subtitle: Text(ctime[index]),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(cimage[index]),
                      ),
                      trailing: Icon(
                        cicons[index],
                        color: Color(0xff075e54),
                      ),
                    ),
                  ))),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        mini: true,
        elevation: 2.0,
        child: Icon(Icons.add_call),
      ),
    );
  }
}
