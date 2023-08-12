import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: Staggred_grid(),
  ));
}

class Staggred_grid extends StatelessWidget {
  const Staggred_grid({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('staggred grid '),
      ),
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Shaqi_jrvej.jpg/1200px-Shaqi_jrvej.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "Natural - Wikipedia",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 9),
                      Text("Shaki Waterfall,Armenia"),
                      Text("20 may 2022")
                    ],
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          "https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/w/o/WOPA160517_D056-resized.jpg?crop=864%2C0%2C1728%2C2304&wid=600&hei=800&scl=2.88",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "The Nature Conservancy:A World Where People & Nature Trive",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text(" Updated  on 10 january 2023")
                    ],
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          "https://images.assettype.com/fortuneindia%2F2020-06%2Fef53f9be-f257-4aa3-9af5-6ca1a9f33a86%2Fclose_up_photography_of_leaves_with_droplets_807598.jpg?rect=0,607,4128,2322&w=1250&q=60",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Text(
                        "Accelerating business along the road to a nature-positive future",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Published: 8 Dec 2022"),
                      Text(" Type:Insight")
                    ],
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          "https://images.hindustantimes.com/img/2023/01/18/1600x900/Hiking_not_only_gets_you_out_into_nature_1674048545635_1674048545907_1674048545907.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Nature Reserve Photos",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Empowering business to adopt nature-positive strategies"),
                      Text("Published:12 oct 2022")
                    ],
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 4,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          "https://images.unsplash.com/photo-1531650646186-66799ebfd42f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHx8&w=1000&q=80",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "woman looking backward",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Fog of volcanos at Tangkubanparahu Mountain, Bandung, West Java, Indonesia"),
                      Text("Published on July 15, 2018")
                    ],
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          "https://image.shutterstock.com/image-photo/overjoyed-happy-woman-enjoying-green-260nw-2104820675.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "IMPORTANCE OF NATURE IN A CHILD’S DEVELOPMENT",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Last Updated On April 12th, 2023 At 04:41 Pm"),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
