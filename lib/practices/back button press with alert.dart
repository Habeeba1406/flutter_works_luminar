import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: exitapp(),
  ));
}

class exitapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showalert() async {
      return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text("Exit"),
              content: const Text("do you want to exit"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text("yes")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text("cancel")),
              ],
            );
          });
    }

    return WillPopScope(
      onWillPop: showalert,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Exit app"),
        ),
        body: Center(
          child: Text("press back button to exit"),
        ),
      ),
    );
  }
}
