import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/storage%20in%20flutter/hive%20curd/hive%20using%20hive%20adapter/database/hivedb.dart';
import 'package:flutter_application_1/storage%20in%20flutter/hive%20curd/models/user%20model.dart';
import 'package:flutter_application_1/storage%20in%20flutter/hive%20curd/screens/loginpage.dart';

class RegisterHive extends StatelessWidget {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registeration page "),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: email,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: password,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () async {
                final userList = await hivedb.instance.getuser();
                validatesignup(context, userList);
              },
              child: const Text('Login')),
        ],
      ),
    );
  }

  void validatesignup(BuildContext context, List<User> userList) async {
    final username = email.text.trim();
    final pwd = password.text.trim();
    bool Userfound = false;
    final validateEmail = EmailValidator.validate(username);
    if (username != "" && pwd != "") {
      if (validateEmail == true) {
        await Future.forEach(userList, (singleUser) {
          if (singleUser.email == username) {
            Userfound = true;
          } else {
            Userfound = false;
          }
        });
        if (Userfound == true) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("User Already Exist!!")));
        } else {
          final validatePassword = validatePassWord(context, pwd);
          if (validatePassword == true) {
            final user = User(email: username, password: pwd);
            await hivedb.instance.adduser(user); // user added to hive db
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => login()));
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("User Registration Success")));
          }
        }
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Enter a Valid Email!!!")));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Field Must Not be Empty!!!")));
    }
  }

  bool validatePassWord(BuildContext context, String pwd) {
    if (pwd.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Password length should be > 6 !!")));
      return false;
    } else {
      return true;
    }
  }
}
