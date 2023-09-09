import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: regpage(),
  ));
}

class regpage extends StatefulWidget {
  const regpage({super.key});

  @override
  State<regpage> createState() => _regpageState();
}

class _regpageState extends State<regpage> {
  final username = TextEditingController();
  final Email = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Username'),
                controller: username,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Password'),
                controller: password,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Confirm Password'),
                controller: confirmpassword,
              ),
            ),
            ElevatedButton(onPressed: () {}, child: TextField())
          ],
        ),
      ),
    );
  }
}
