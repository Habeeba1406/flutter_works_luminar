import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileUI(),
  ));
}

class ProfileUI extends StatelessWidget {
  List iconns = [
    Icon(Icons.account_circle_rounded),
    Icon(Icons.add_card_rounded)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          Icon(Icons.sort, color: Colors.black),
          SizedBox(width: 20),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 300,
            width: double.infinity,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/id/1317804578/photo/one-businesswoman-headshot-smiling-at-the-camera.jpg?s=612x612&w=0&k=20&c=EqR2Lffp4tkIYzpqYh8aYIPRr-gmZliRHRxcQC5yylY='),
                  ),
                  SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FontAwesomeIcons.facebook, color: Colors.blue),
                      SizedBox(width: 10),
                      Icon(FontAwesomeIcons.twitter,
                          color: Colors.lightBlueAccent),
                      SizedBox(width: 10),
                      Icon(FontAwesomeIcons.linkedin, color: Colors.blue),
                      SizedBox(width: 10),
                      Icon(FontAwesomeIcons.google, color: Colors.red)
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Chromicle',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 3),
                  Text(
                    '@amfoss',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 17),
                  Text(
                    'Mobile app developer and Open Source enthusiast',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              Container(
                height: 50,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.privacy_tip),
                    SizedBox(
                      width: 65,
                    ),
                    Text('Privacy'),
                    SizedBox(
                      width: 130,
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.help),
                    SizedBox(
                      width: 65,
                    ),
                    Text('help and support'),
                    SizedBox(
                      width: 80,
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.settings),
                    SizedBox(
                      width: 65,
                    ),
                    Text('Settings'),
                    SizedBox(
                      width: 130,
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.person_add),
                    SizedBox(
                      width: 65,
                    ),
                    Text('Invite a person'),
                    SizedBox(
                      width: 80,
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.logout),
                    SizedBox(
                      width: 65,
                    ),
                    Text('Log out'),
                    SizedBox(
                      width: 130,
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.history),
                    SizedBox(
                      width: 65,
                    ),
                    Text('purchase history'),
                    SizedBox(
                      width: 80,
                    ),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
