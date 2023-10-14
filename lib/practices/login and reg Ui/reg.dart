import 'package:flutter/material.dart';
import 'package:flutter_application_1/practices/login%20and%20reg%20Ui/login%20Ui.dart';
import 'package:flutter_application_1/practices/loginpage.dart';
import 'package:flutter_application_1/storage%20in%20flutter/sqflite%20operation/sqfliteoperations.dart';

import 'package:fluttertoast/fluttertoast.dart';

class regUI extends StatefulWidget {
  @override
  State<regUI> createState() => _SignupState();
}

class _SignupState extends State<regUI> {
  var formkey = GlobalKey<FormState>();
  bool passvisibility1 = true;
  bool passvisibility2 = true;
  final name = TextEditingController();
  final email = TextEditingController();
  final pwd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: formkey,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 100, right: 100, top: 100),
                child: Text(
                  "registration",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Text(
                  "Create an Account, It's free",
                  style: TextStyle(fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                   controller: name,   
                    decoration: InputDecoration(
                        hintText: "User name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                    validator: (name) {
                      if (name!.isEmpty) {
                      } else {
                        return null;
                      }
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: email,
                    decoration: InputDecoration(
                        hintText: "Email ID",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                    validator: (email) {
                      if (email!.isEmpty || !email.contains("@")) {
                        return "Fields are empty or Invalid";
                      } else {
                        return null;
                      }
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: pwd,
                  obscuringCharacter: "*",
                  obscureText: passvisibility1,
                  decoration: InputDecoration(

                      /// prefixIcon: Icon(Icons.visibility_off_sharp),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (passvisibility1 == true) {
                                passvisibility1 = false;
                              } else {
                                passvisibility1 = true;
                              }
                            });
                          },
                          icon: Icon(passvisibility1 == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscuringCharacter: "*",
                  obscureText: passvisibility2,
                  decoration: InputDecoration(
                      //prefixIcon: Icon(Icons.visibility_off_sharp),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (passvisibility2 == true) {
                                passvisibility2 = false;
                              } else {
                                passvisibility2 = true;
                              }
                            });
                          },
                          icon: Icon(passvisibility2 == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      hintText: " confirm Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
         
                  validator: (cpass) {
                    if (cpass!.isEmpty || cpass !=) {
                      return "Fields are empty or Password length must be greaterthan 6";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginpageUi()));
                      } else {
                        Fluttertoast.showToast(
                            msg: "Invalid Username or Password",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.TOP,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      minimumSize: Size(350, 50),
                    ),
                    child: const Text("Sign UP")),
              ),
              TextButton(
                  onPressed: () async {
                    Registration();

                     Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => loginPage()));
                  },
                  child: const Text("Already have an account ? Login")
});
                  
                  
  
  }
  
  void Registration() async {
  }

