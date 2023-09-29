import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 8),
                child: Card(
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        shape: BoxShape.rectangle),
                    child: Icon(
                      Icons.groups,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 13,
                height: 13,
              ),
              Text(
                "New Community",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Positioned(
              top: 29,
              left: 31,
              child: Icon(
                Icons.add_circle,
                color: Color(0xff075e54),
                size: 21,
              )),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 8),
                child: Card(
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 55, left: 14),
                child: Text(
                  "Luminar June 23 Community",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
