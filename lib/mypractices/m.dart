import 'package:flutter/material.dart';

void main() {
  runApp(PlaylistApp());
}

class PlaylistApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playlist App',
      theme: ThemeData(
        backgroundColor: Colors.black,
      ),
      home: PlaylistScreen(),
    );
  }
}

class PlaylistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Playlist'),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: playlist.length,
        itemBuilder: (context, index) {
          final item = playlist[index];

          return GestureDetector(
            onTap: () {
              // Handle item tap
            },
            child: Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(item.coverImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(8.0),
                    color: Colors.black.withOpacity(0.7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.songName,
                            style: TextStyle(color: Colors.white)),
                        Text(item.artist,
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class PlaylistItem {
  final String songName;
  final String artist;
  final String coverImage;

  PlaylistItem(
      {required this.songName, required this.artist, required this.coverImage});
}

List<PlaylistItem> playlist = [
  PlaylistItem(
      songName: "Song 1",
      artist: "Artist 1",
      coverImage:
          "https://upload.wikimedia.org/wikipedia/en/3/3c/Armani_White_-_Billie_Eilish.png"),
  PlaylistItem(
      songName: "Song 2",
      artist: "Artist 2",
      coverImage:
          "https://upload.wikimedia.org/wikipedia/en/3/3c/Armani_White_-_Billie_Eilish.png"),
  PlaylistItem(
      songName: "Song 3",
      artist: "Artist 2",
      coverImage:
          "https://upload.wikimedia.org/wikipedia/en/3/3c/Armani_White_-_Billie_Eilish.png"),
  PlaylistItem(
      songName: "Song 4",
      artist: "Artist 2",
      coverImage:
          "https://upload.wikimedia.org/wikipedia/en/3/3c/Armani_White_-_Billie_Eilish.png"),
  PlaylistItem(
      songName: "Song 5",
      artist: "Artist 2",
      coverImage:
          "https://upload.wikimedia.org/wikipedia/en/3/3c/Armani_White_-_Billie_Eilish.png"),
  PlaylistItem(
      songName: "Song 6",
      artist: "Artist 2",
      coverImage:
          "https://upload.wikimedia.org/wikipedia/en/3/3c/Armani_White_-_Billie_Eilish.png"),
  PlaylistItem(
      songName: "Song 7",
      artist: "Artist 2",
      coverImage:
          "https://upload.wikimedia.org/wikipedia/en/3/3c/Armani_White_-_Billie_Eilish.png"),
  PlaylistItem(
      songName: "Song 8",
      artist: "Artist 2",
      coverImage:
          "https://upload.wikimedia.org/wikipedia/en/3/3c/Armani_White_-_Billie_Eilish.png"),
  PlaylistItem(
      songName: "Song 9",
      artist: "Artist 2",
      coverImage:
          "https://upload.wikimedia.org/wikipedia/en/3/3c/Armani_White_-_Billie_Eilish.png"),
  PlaylistItem(
      songName: "Song 10",
      artist: "Artist 2",
      coverImage:
          "https://upload.wikimedia.org/wikipedia/en/3/3c/Armani_White_-_Billie_Eilish.png"),
  PlaylistItem(
      songName: "Song 11",
      artist: "Artist 2",
      coverImage:
          "https://upload.wikimedia.org/wikipedia/en/3/3c/Armani_White_-_Billie_Eilish.png"),
  PlaylistItem(
      songName: "Song 12",
      artist: "Artist 2",
      coverImage:
          "https://upload.wikimedia.org/wikipedia/en/3/3c/Armani_White_-_Billie_Eilish.png"),
  PlaylistItem(
      songName: "Song 13",
      artist: "Artist 2",
      coverImage:
          "https://upload.wikimedia.org/wikipedia/en/3/3c/Armani_White_-_Billie_Eilish.png"),
  PlaylistItem(
      songName: "Song 14",
      artist: "Artist 2",
      coverImage:
          "https://upload.wikimedia.org/wikipedia/en/3/3c/Armani_White_-_Billie_Eilish.png"),
];
