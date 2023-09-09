import 'package:flutter/material.dart';
import 'package:flutter_application_1/assignment/login1.dart';
import 'package:flutter_application_1/assignment/splash%20page.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MaterialApp(
    home: IntroScreen(),
  ));
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: 'first page',
            body:
                'Introduction screen shows the details of the app and demo of the pages',
            image: IntroImage(
                'https://images.unsplash.com/flagged/photo-1580139624070-910f651c1b78?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80')),
        PageViewModel(
            title: 'Second page',
            body:
                'Introduction screen shows the details of the app and demo of the pages',
            image: IntroImage(
                'https://images.unsplash.com/photo-1519766304817-4f37bda74a26?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80')),
        PageViewModel(
            title: 'Third page',
            body:
                'Introduction screen shows the details of the app and demo of the pages',
            image: IntroImage(
                'https://images.unsplash.com/photo-1521830101529-057b1dfd9784?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80')),
      ],
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => splash2())),
      onSkip: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Login())),
      showSkipButton: true,
      skip: Text('skip'),
      next: Icon(Icons.arrow_forward),
      done: Text('done'),
      dotsDecorator: DotsDecorator(
          size: Size(10, 12),
          color: Colors.grey,
          activeSize: Size(25, 12),
          activeColor: Colors.blue,
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
    );
  }

  Widget IntroImage(String image) {
    return Align(
      alignment: Alignment.center,
      child: Image.network(
        image,
        width: 500,
      ),
    );
  }
}
