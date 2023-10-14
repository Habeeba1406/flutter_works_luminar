import 'package:flutter/material.dart';
import 'package:flutter_application_1/practices/login%20and%20reg%20Ui/login%20Ui.dart';
import 'package:flutter_application_1/practices/login%20and%20reg%20Ui/reg.dart';

void main() {
  runApp(MaterialApp(
    home: loginUi(),
  ));
}

class loginUi extends StatefulWidget {
  const loginUi({super.key});

  @override
  State<loginUi> createState() => _loginUiState();
}

class _loginUiState extends State<loginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 100, right: 100, top: 100),
              child: Text(
                "Hello There !",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Text(
                "Automatic identity verification which enables you to verify your identity",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset(
              "assets/icons/images/login.png",
              height: 300,
              width: 300,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginpageUi()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      minimumSize: Size(250, 50)),
                  child: Text("login")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => regUI()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    minimumSize: Size(250, 50),
                  ),
                  child: Text("registration")),
            ),
          ],
        ),
      ),
    );
  }
}
