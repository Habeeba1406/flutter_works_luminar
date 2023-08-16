import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: bottomsheet(),
  ));
}

class bottomsheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bottom sheet with image on tap"),
      ),
      body: Center(
        child: GestureDetector(
          onDoubleTap: () => showsheet(context),
          child: Image.asset("assets/icons/images/orange.jpg"),
        ),
      ),
    );
  }

  void showsheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.green,
                ),
                title: Text("WhatsApp"),
              ),
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.instagram,
                  color: Colors.red,
                ),
                title: Text("Instagram"),
              ),
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                ),
                title: Text("FaceBook"),
              ),
            ],
          ),
        );
      },
    );
  }
}
