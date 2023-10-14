import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase%20example/email%20pass%20auth/firebase_db.dart';
import 'package:flutter_application_1/firebase%20example/email%20pass%20auth/home_fire.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  User? user = FirebaseAuth.instance.currentUser;
  runApp(MaterialApp(home: user == null ? Login_fire() : Home_fire()));
}

class Login_fire extends StatefulWidget {
  const Login_fire({super.key});

  @override
  State<Login_fire> createState() => _Login_fireState();
}

class _Login_fireState extends State<Login_fire> {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Username"),
              controller: username_controller,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
              ),
              controller: password_controller,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                String email = username_controller.text.trim();
                String pass = password_controller.text.trim();
                FirebaseHelper()
                    .Login(email: email, password: pass)
                    .then((result) {
                  if (result == null) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home_fire()));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(result)));
                  }
                });
              },
              child: const Text('Login Here')),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Login Here'))
        ],
      ),
    );
  }
}
