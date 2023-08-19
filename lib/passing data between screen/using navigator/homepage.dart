import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/passing%20data%20between%20screen/using%20navigator/detailpage.dart';
import 'package:flutter_application_1/passing%20data%20between%20screen/using%20navigator/dummydata.dart';

void main() {
  runApp(MaterialApp(
    home: producthome(),
    routes: {'details': (context) => productdetails()},
  ));
}

class producthome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shop Now"),
      ),
      body: ListView(
          children: products
              .map((productonebyone) => Card(
                    child: ListTile(
                      leading: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      NetworkImage(productonebyone['image'])))),
                      title: Text(productonebyone['name']),
                      subtitle: Text('${productonebyone['price']}'),
                      onTap: () {
                        gotonextpage(context, productonebyone['id']);
                      },
                    ),
                  ))
              .toList()),
    );
  }

  void gotonextpage(BuildContext context, productid) {
    Navigator.pushNamed(context, 'details', arguments: productid);
  }
}
