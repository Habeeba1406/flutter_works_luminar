import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/statemanagement_using_provider/model/movies.dart';

final List<movies> movielist = List.generate(
    100,
    (index) => movies(
        title: 'movie $index', time: '${Random().nextInt(100) + 60}minitue'));

class movieprovider extends ChangeNotifier {
  final List<movies> _movie = movielist;
  List<movies> get movie => _movie;
  final List<movies> _Wishlistmovie = [];
  List<movies> get moviewishlist => _Wishlistmovie;

  void addtoWishlist(movies MovieFromMainPage) {
    _Wishlistmovie.add(MovieFromMainPage);
  }

  void removefromwishlist(movies MovieFromMainPage) {
    _Wishlistmovie.remove(MovieFromMainPage);
  }
}
