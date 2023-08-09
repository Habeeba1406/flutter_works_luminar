import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: gridui(),
  ));
}

class gridui extends StatelessWidget {
  var image = [
    "assets/icons/images/bag.webp",
    "assets/icons/images/chain.jpg",
    "assets/icons/images/earrings.jpg",
    "assets/icons/images/socks.jpg",
    "assets/icons/images/specks.webp",
    "assetsicons/images/shoes.webp",
  ];
  var name = [
    "Bag",
    "chain",
    "earrings",
    "womens socks",
    "specks",
    "shoes",
  ];
  var price = [
    "1500",
    "500",
    "200",
    "250",
    "2000",
    "3000",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 20),
          Icon(Icons.line_style),
          SizedBox(width: 10),
        ],
        title: Text("Products"),
      ),
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildListDelegate(List.generate(
              6,
              (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 115,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: AssetImage(image[index]),
                                  )),
                            ),
                            Text(
                              name[index],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("\$${price[index]}"),
                          ],
                        ),
                      ),
                    ),
                  )))),
    );
  }
}
