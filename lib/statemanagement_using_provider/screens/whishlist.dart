import 'package:flutter/material.dart';
import 'package:flutter_application_1/statemanagement_using_provider/provider/movieprovider.dart';
import 'package:provider/provider.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var wishmovies = context.watch<movieprovider>().moviewishlist;
    return Scaffold(
        appBar: AppBar(
          title: Text('my wishlist ${wishmovies.length}'),
        ),
        body: ListView.builder(
            itemCount: wishmovies.length,
            itemBuilder: (context, index) {
              final wishmovie = wishmovies[index];
              return Card(
                  child: ListTile(
                title: Text(wishmovie.title),
                subtitle: Text(wishmovie.time!),
                trailing: TextButton(
                  onPressed: () {
                    context.read<movieprovider>().removefromwishlist(wishmovie);
                  },
                  child: Text("Remove"),
                ),
              ));
            }));
  }
}
