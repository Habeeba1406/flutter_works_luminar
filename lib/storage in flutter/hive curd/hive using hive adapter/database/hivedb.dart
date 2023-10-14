import 'package:flutter_application_1/storage%20in%20flutter/hive%20curd/models/user%20model.dart';
import 'package:hive/hive.dart';

class hivedb {
  hivedb.internal();
  static hivedb instance = hivedb.internal();
  factory hivedb() {
    ///factory constructor for creating singleton class
    return instance; //(these class have only one instances)
  }
  Future<void> adduser(User user) async {
    final db = await Hive.openBox('userData');
    db.put(user.id, user);
  }

  ///read user datas from hive db
  Future<List<User>> getuser() async {
    final db = await Hive.openBox<User>('userData');
    return db.values.toList();
  }
}
