import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: refrahome(),
  ));
}

class refrahome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gridview using refractoring"),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 20),
          itemBuilder: (context, index) {
            return NewWidget();
          }),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/icons/images/earrings.jpg",
            height: 100,
          ),
          const Text("Earrings"),
          const Text("\$ 200"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  label: Text("Whisglist")),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                  label: Text(" buy Now")),
            ],
          )
        ],
      ),
    );
  }
}
