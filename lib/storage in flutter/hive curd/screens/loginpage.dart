import 'package:flutter/material.dart';
import 'package:flutter_application_1/storage%20in%20flutter/hive%20curd/hive%20using%20hive%20adapter/database/hivedb.dart';
import 'package:flutter_application_1/storage%20in%20flutter/hive%20curd/models/user%20model.dart';
import 'package:flutter_application_1/storage%20in%20flutter/hive%20curd/screens/homepage.dart';
import 'package:flutter_application_1/storage%20in%20flutter/hive%20curd/screens/register%20page.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('userData');
  runApp(MaterialApp(
    home: login(),
  ));
}

class login extends StatelessWidget {
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hive login"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(
                  hintText: 'username', border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: pass,
              decoration: const InputDecoration(
                  hintText: 'password', border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                final Users = await hivedb.instance.getuser();
                checkUserExit(context, Users);
              },
              child: Text('login')),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => RegisterHive()));
              },
              child: const Text("Not a user ? Register Here!"))
        ],
      ),
    );
  }

  Future<void> checkUserExit(BuildContext context, List<User> users) async {
    final lemail = email.text.trim();
    final lpass = pass.text.trim();
    bool userfound = false;
    if (lemail != "" && lpass != "") {
      await Future.forEach(users, (singleUser) {
        if (lemail == singleUser.email && lpass == singleUser.password) {
          userfound = true;
        } else {
          userfound = false;
        }
      });
      if (userfound == true) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => hiveHome(email: lemail)));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Login Failed,User Not Fount")));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Field MustNot BE Empty')));
    }
  }
}
