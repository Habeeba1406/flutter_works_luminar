import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: splash2(),
  ));
}

class splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      body: Container(
        decoration: const BoxDecoration(

            ///gradient: LinearGradient(begin: Alignment.bottomLeft,end: Alignment.topRight,colors: [Colors.purple,Colors.white10,Colors.purpleAccent])
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/icons/images/blue shade.jpg"))),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   Icons.sailing_outlined,
            //   size: 80,
            //   color: Colors.purple,
            // ),
            Image.asset(
              "assets/icons/computer.png",
              height: 200,
              width: 200,
            ),
            const Text(
              "My application",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue),
            ),
          ],
        )),
      ),
    );
  }
}
