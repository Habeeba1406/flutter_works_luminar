import 'package:flutter/material.dart';
import 'package:flutter_application_1/assignment/whatsapp%20Ui/callscreen.dart';
import 'package:flutter_application_1/assignment/whatsapp%20Ui/chatscreen.dart';
import 'package:flutter_application_1/assignment/whatsapp%20Ui/communitypage.dart';
import 'package:flutter_application_1/assignment/whatsapp%20Ui/statusscreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: homeScreen(),
  ));
}

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075e54),
          title: Text(
            'WhatsApp',
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                size: 28,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                size: 28,
              ),
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("new broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Starred messages")),
                PopupMenuItem(child: Text("Payments")),
                PopupMenuItem(child: Text("settings")),
              ];
            })
          ],
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: EdgeInsets.zero,
              tabs: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * .1,
                    child: FaIcon(FontAwesomeIcons.peopleGroup)),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: Text("Chat")),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: Text("status")),
                SizedBox(
                    width: MediaQuery.of(context).size.width * .3,
                    child: Text("Call"))
              ]),
        ),
        body: TabBarView(children: [
          CommunityPage(),
          WhatsappChat(),
          StatusScreen(),
          CallScreen(),
        ]),
      ),
    );
  }
}
