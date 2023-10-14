import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Listview(),
  ));
}

class Listview extends StatelessWidget {
  var img = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTelqF9bhbLNs1u8C0NtvFhNO9QKxhNjJ_W2w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTelqF9bhbLNs1u8C0NtvFhNO9QKxhNjJ_W2w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTelqF9bhbLNs1u8C0NtvFhNO9QKxhNjJ_W2w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTelqF9bhbLNs1u8C0NtvFhNO9QKxhNjJ_W2w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTelqF9bhbLNs1u8C0NtvFhNO9QKxhNjJ_W2w&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTelqF9bhbLNs1u8C0NtvFhNO9QKxhNjJ_W2w&usqp=CAU",
  ];
  var name = [
    'Delhi',
    'Finland',
    'London',
    'Vancouver',
    'New York',
    'France',
  ];
  var subname = [
    'India',
    'Europe',
    'Uk',
    'Canada',
    'Paris',
    'Albany',
  ];
  var Population = [
    'population:32.9 mill',
    'population:5.54 mill',
    'population:8.8 mill',
    'population:2.6 mill',
    'population:10.2 mill',
    'population:6.12 mill',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Cities Around World",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ),
      body: ListView.builder(
          itemCount: img.length,
          itemBuilder: (context, index) {
            return Card(
                color: Colors.orange,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Image.network(
                      img[index],
                      width: 50,
                      height: 100,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Card(
                      color: Colors.orange,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' ${name[index]}',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            ' ${subname[index]}',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            '${Population[index]}',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ));
          }),
    );
  }
}
