import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listview2(),
  ));
}

class listview2 extends StatelessWidget {
  var name = [
    "burger",
    "french fries",
    "coffe",
    "pizza",
  ];
  var image = [
    "assets/icons/images/burger.jpg",
    "assets/icons/images/french fries.jpg",
    "assets/icons/images/cofee.jpg",
    "assets/icons/images/1620px-Pizza-3007395.jpg",
  ];
  var price = [250, 100, 150, 200];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("listview2"),
          actions: [
            const Icon(Icons.camera_alt),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("setting")),
                const PopupMenuItem(child: Text("profile")),
                const PopupMenuItem(child: Text("broadcast")),
                const PopupMenuItem(child: Text("help")),
              ];
            })
          ],
        ),
        body: ListView(
          children: List.generate(
            4,
            (index) => Card(
                child: ListTile(
              title: Text(name[index]),
              subtitle: Text("\$ ${price[index]}"),
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),
              ),
              trailing: const Wrap(
                direction: Axis.vertical,
                children: [Text("12.30"), CircleAvatar()],
              ),
            )),
          ),
        ));
  }
}
