import 'package:flutter/material.dart';
import 'package:flutter_application_1/statemanagement_using_provider/provider/movieprovider.dart';
import 'package:flutter_application_1/statemanagement_using_provider/screens/whishlist.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<movieprovider>(
    create: (BuildContext context) => movieprovider(),
    child: MaterialApp(
      home: MovieMain(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class MovieMain extends StatelessWidget {
  const MovieMain({super.key});

  @override
  Widget build(BuildContext context) {
    var wishmovie = context.watch<movieprovider>().moviewishlist;

    var movies = context.watch<movieprovider>().movie;

    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
      ),
      body: Column(
        children: [
          ElevatedButton.icon(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => WishListScreen())),
              icon: Icon(Icons.favorite_border),
              label: Text('Go to whistile')),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            final currentmovie = movies[index];

            return Card(
              child: ListTile(
                title: Text(currentmovie.title),
                subtitle: Text(currentmovie.time!),
                trailing: IconButton(
                    onPressed: () {
                      if (!wishmovie.contains(currentmovie)) {
                        context
                            .read<movieprovider>()
                            .addtoWishlist(currentmovie);
                      } else {
                        context
                            .read<movieprovider>()
                            .removefromwishlist(currentmovie);
                      }
                    },
                    icon: Icon(
                      Icons.favorite_border,
                      color: wishmovie.contains(currentmovie)
                          ? Colors.red
                          : Colors.white,
                    )),
              ),
            );
          }))
        ],
      ),
    );
  }
}
