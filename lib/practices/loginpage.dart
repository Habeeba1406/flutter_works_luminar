import 'package:flutter/material.dart';
import 'package:flutter_application_1/assignment/homepage1.dart';
//import 'package:flutter_application_1/homepage1.dart';
import 'package:fluttertoast/fluttertoast.dart';

class loginPage extends StatelessWidget {
  String username = "habeeba";
  String password = "habeeba123";
  TextEditingController Usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: Usernamecontroller,
                // ignore: unnecessary_const
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.people),
                    hintText: "username",
                    helperText: "user name must be an email",
                    labelText: "username"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
              child: TextField(
                controller: passwordcontroller,
                obscureText: true,
                obscuringCharacter: '*',
                // ignore: prefer_const_constructors
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.visibility_off_sharp),
                    hintText: "password",
                    helperText: "password must contain 6 character",
                    labelText: "password"),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (username == Usernamecontroller.text &&
                      password == passwordcontroller.text) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Homepage()));
                    Usernamecontroller.text = "";
                    passwordcontroller.text = "";
                  } else {
                    ///ScaffoldMessenger.of(context).showSnackBar( SnackBar(
                    /// content: Text("invalid username or password"),backgroundColor: Colors.red,));
                    Fluttertoast.showToast(
                        msg: "invalid username or password",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.TOP,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  }
                },
                child: const Text("login"))
          ],
        ),
      ),
    );
  }
}
