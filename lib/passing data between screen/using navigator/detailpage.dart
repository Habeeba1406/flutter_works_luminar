import 'package:flutter/material.dart';
import 'package:flutter_application_1/passing%20data%20between%20screen/using%20navigator/dummydata.dart';

class productdetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productid = ModalRoute.of(context)?.settings.arguments;

    ///To receive the value from previous page.
    final product =
        products.firstWhere((element) => element['id'] == productid);
    return Scaffold(
      appBar: AppBar(
        title: Text(product['name']),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage(product['image']))),
            ),
            Text(
              product['name'],
              style: const TextStyle(fontSize: 40),
            ),
            Text(
              '${product['price']}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              '${product['rating']}',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              product['Discription'],
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
