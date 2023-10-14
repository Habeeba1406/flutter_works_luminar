import 'package:hive_flutter/adapters.dart';
part 'user model.g.dart';

@HiveType(typeId: 1)
class User {
  @HiveField(0)
  final String email;
  @HiveField(1)
  final String password;
  @HiveField(2)
  String? id;

  User({required this.email, required this.password}) {
    id = DateTime.now().microsecondsSinceEpoch.toString();
  }
}