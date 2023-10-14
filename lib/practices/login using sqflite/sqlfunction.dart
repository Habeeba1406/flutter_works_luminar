import 'package:sqflite/sqflite.dart' as sql;

class sqlFunction {
  static Future<sql.Database> createDB() async {
    return sql.openDatabase('user.db', version: 1,
        onCreate: (sql.Database database, int version) async {
      await createTable(database);
    });
  }

  static Future<void> createTable(sql.Database database) async {
    await database.execute("""CREATE TABLE registration(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      name TEXT,
      email TEXT,
      password TEXT
    )
""");
  }

  static Future<int> createUser(name, email, password) async {
    final db = await sqlFunction.createDB();
    final data = {'name': name, 'email': email, 'password': password};
    final id = await db.insert('registration', data);
    return id;
  }

  static Future<List<Map>> CheckLogin(name, email, password) async {
    final db = await sqlFunction.createDB();
    final data = await db.rawQuery(
        "SELECT * FROM user WHERE email= '$email' AND password = '$password' ");
    if (data.isNotEmpty) {
      return data;
    }
    return data;
  }

  static Future<List<Map>> userfound(name, email) async {
    final db = await sqlFunction.createDB();
    final data = await db.rawQuery(
        "SELECT * FROM user WHERE name = '$name' AND email ='$email'");
    if (data.isNotEmpty) {
      return data;
    }
    return data;
  }
}
