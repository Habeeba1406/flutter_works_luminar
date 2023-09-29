import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Music_Playlist(),
  ));
}

class Music_Playlist extends StatefulWidget {
  @override
  State<Music_Playlist> createState() => _Music_PlaylistState();
}

class _Music_PlaylistState extends State<Music_Playlist> {
  var selectedIndex = 0;

  var image = [
    "https://marketplace.canva.com/EAFMTCSbVoc/1/0/1600w/canva-tosca-yellow-white-simple-aesthetic-pop-hits-song-playlist-cover-xKqnnrGBve0.jpg",
    "https://c.saavncdn.com/567/Hindi-Lofi-Hindi-2022-20220908223546-500x500.jpg",
    "https://c.saavncdn.com/editorial/BestDanceHitsHindi_20221125043134_500x500.jpg",
    "https://img.wynk.in/unsafe/200x200/filters:no_upscale():strip_exif():format(jpg)/http://s3-ap-south-1.amazonaws.com/wynk-music-cms/music/Cover-Songs---Playlist-300x300.png",
  ];

  var songImage = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhi_xmJRLDWKJBylBIuaM5CHv7ECArwyp2eQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiynYEDu0rQ11JAO2o_EOA9t6xVZuHmjK_TA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmaJIqG0ytWFAYAQeG9n1bnCVrhIdwCH1nGw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQfj5Xqy08xM78zd_PLeDhi3L4kzM70H5pCw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8SLk-tCIKFkoUo9fiU3vHr78jGfb_3hDnBQ&usqp=CAU",
  ];

  var SongName = [
    "Ambarsariya",
    "Galliyan",
    "Janah meri janah",
    "Thattathin marayathe",
    "Holy..!"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Text(
          "Musify",
          style: TextStyle(
              color: const Color.fromARGB(255, 230, 185, 200),
              fontWeight: FontWeight.bold,
              fontSize: 35),
        )),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Suggested Playlists",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 230, 185, 200),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 150,
                color: Colors.black,
                child: ListView.custom(
                    scrollDirection: Axis.horizontal,
                    childrenDelegate: SliverChildListDelegate(List.generate(
                        4,
                        (index) => Card(
                              child: Image.network(image[index]),
                            )))),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    "Recommended for you",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 230, 185, 200),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.black,
                        child: ListTile(
                          title: Text(
                            SongName[index],
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 238, 183, 202),
                                fontWeight: FontWeight.bold),
                          ),
                          leading: Image.network(songImage[index]),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.star_border_outlined,
                                color: const Color.fromARGB(255, 230, 185, 200),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.download_outlined,
                                color: const Color.fromARGB(255, 230, 185, 200),
                              )
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: Colors.black,
        onButtonPressed: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        iconSize: 20,
        activeColor: const Color.fromARGB(255, 230, 185, 200),
        inactiveColor: Colors.white,
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            icon: Icons.home,
            title: 'Home',
          ),
          BarItem(
            icon: Icons.search_rounded,
            title: 'Search',
          ),
          BarItem(
            icon: Icons.library_music,
            title: 'Library',
          ),
          BarItem(
            icon: Icons.more_horiz_rounded,
            title: 'More',
          ),
        ],
      ),
    );
  }
}
