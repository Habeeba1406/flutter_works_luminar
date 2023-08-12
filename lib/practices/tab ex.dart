import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

///whatsapp
void main() {
  runApp(MaterialApp(
    home: tabex(),
  ));
}

class tabex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: Text("WhatsApp"),
              actions: [
                Icon(Icons.search),
                Icon(Icons.camera_alt),
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
              bottom: const TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.zero,
                  tabs: [
                    SizedBox(
                        width: .1, child: FaIcon(FontAwesomeIcons.peopleGroup)),
                    Text("Chat"),
                    Text("Status"),
                    Text("Call")
                  ]),
            ),
            body: TabBarView(
              children: [
                Center(
                  child: Text("Community"),
                ),
                Center(
                  child: Text("Chat"),
                ),
                Center(
                  child: Text("Status"),
                ),
                Center(
                  child: Text("Call"),
                )
              ],
            )));
  }
}
