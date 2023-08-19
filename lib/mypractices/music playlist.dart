import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Playlist {
  final String title;
  final String artist;
  final String coverUrl;

  Playlist({required this.title, required this.artist, required this.coverUrl});
}

class MyApp extends StatelessWidget {
  final List<Playlist> playlists = [
    Playlist(
      title: "Playlist 1",
      artist: "Artist 1",
      coverUrl: "https://example.com/cover1.jpg",
    ),
    Playlist(
      title: "Playlist 2",
      artist: "Artist 2",
      coverUrl: "https://example.com/cover2.jpg",
    ),
    // Add more playlists...
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playlist App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlaylistScreen(playlists: playlists),
    );
  }
}

class PlaylistScreen extends StatelessWidget {
  final List<Playlist> playlists;

  PlaylistScreen({required this.playlists});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Playlists'),
      ),
      body: ListView.builder(
        itemCount: playlists.length,
        itemBuilder: (BuildContext context, int index) {
          return PlaylistCard(playlist: playlists[index]);
        },
      ),
    );
  }
}

class PlaylistCard extends StatelessWidget {
  final Playlist playlist;

  PlaylistCard({required this.playlist});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(8),
      child: ListTile(
        leading: Image.network(playlist.coverUrl),
        title: Text(playlist.title),
        subtitle: Text(playlist.artist),
        onTap: () {
          // Handle playlist item tap
          // You can navigate to a new screen or perform some action here
        },
      ),
    );
  }
}
