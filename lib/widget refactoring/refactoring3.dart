import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: refactoring3(),
  ));
}

class refactoring3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("refactoring 3"),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return MyRefractoringWidget(
              rimage: Image.asset("assets/icons/images/watermelon.jpg"),
              label: Text(
                "Watermelon",
                style:
                    GoogleFonts.dancingScript(fontSize: 30, color: Colors.red),
              ),
            );
          }),
    );
  }
}

class MyRefractoringWidget extends StatelessWidget {
  final Color? bgcolor;
  final Image? rimage;
  VoidCallback? onclick;
  Widget? label;
  Widget? ricon;

  MyRefractoringWidget(
      {this.bgcolor,
      required this.rimage,
      this.label,
      this.onclick,
      this.ricon});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Center(
        child: ListTile(
          title: label,
          leading: rimage,
          onTap: onclick,
          trailing: ricon,
        ),
      ),
    );
  }
}
