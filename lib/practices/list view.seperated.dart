import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listview_seperated(),
  ));
}

class listview_seperated extends StatelessWidget {
  var name = [
    "january",
    "february",
    "march",
    "april",
    "may",
    "june",
    "july",
    "august",
    "september",
    "october",
    "november",
    "december"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list view seperated"),
      ),
      body: ListView.separated(
        itemBuilder: (context, Index) {
          return SizedBox(
              height: 30,
              child: Card(
                child: Text(name[Index]),
              ));
        },
        separatorBuilder: (context, Index) {
          if (Index % 3 == 0) {
            return const Card(
              child: Text("advertisement"),
              color: Colors.red,
            );
          } else {
            return const SizedBox();
          }
        },
        itemCount: 12,
      ),
    );
  }
}
