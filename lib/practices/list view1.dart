import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: listview1(),
  ));
}

class listview1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("listview"),
      ),
      body: ListView(
        children: [
          Center(
              child: Text(
            "select your food from the menu !!",
            style: GoogleFonts.rubik(
                fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
          )),
          Card(
            child: ListTile(
              title: const Text("hamburger"),
              subtitle: const Text("\$190"),
              trailing: const Icon(Icons.shopping_cart),
              leading: Image.asset("assets/icons/images/burger.jpg"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("pizza"),
              subtitle: const Text("\$300"),
              trailing: const Icon(Icons.shopping_cart),
              leading:
                  Image.asset("assets/icons/images/1620px-Pizza-3007395.jpg"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("cofee"),
              subtitle: const Text("\$90"),
              trailing: const Icon(
                Icons.shopping_cart,
                color: Colors.teal,
              ),
              leading: Image.asset("assets/icons/images/cofee.jpg"),
            ),
          ),
          const Card(
            child: ListTile(
              title: Text("biriyani"),
              subtitle: Text("\$180"),
              trailing: Icon(
                Icons.shopping_cart,
                color: Colors.teal,
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.licious.in/blog/wp-content/uploads/2022/06/chicken-hyderabadi-biryani-01-750x750.jpg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
