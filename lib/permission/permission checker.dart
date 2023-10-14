import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class permi extends StatefulWidget {
  const permi({super.key});

  @override
  State<permi> createState() => _permissionState();
}

class _permissionState extends State<permi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: requestcamerapermission,
              child: Text('request to camera permission')),
          ElevatedButton(
              onPressed: () {}, child: Text('request to location permission')),
          ElevatedButton(
              onPressed: () {}, child: Text('request to multiple permission')),
        ],
      ),
    );
  }

  void requestcamerapermission() async {
    var status = await Permission.camera.status;
    if (status.isGranted) {
      ImagePicker picker = ImagePicker();
    }
  }
}
