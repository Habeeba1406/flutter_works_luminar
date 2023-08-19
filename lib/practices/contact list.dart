import 'package:flutter/material.dart';

class contactlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("simple contact list"),
      ),
      body: contactlist(),
    );
  }
}
