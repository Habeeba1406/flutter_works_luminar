import 'package:flutter/material.dart';
import 'package:flutter_application_1/practices/login%20using%20sqflite/sqlfunction.dart';

class Signup_Form extends StatelessWidget {
  var formkey1 = GlobalKey<FormState>();
  var name = TextEditingController();
  var email = TextEditingController();
  var pass = TextEditingController();
  var conformpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void Addnewuser(String name, String email, String password) async {
      var id = await sqlFunction.createUser(name, email, password);
      if (id != null) {
        /// if registration is success goto login page
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login_Form()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Registration not Successful')));
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formkey1,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "create an Account,Its free",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  controller: name,
                  validator: (email) {
                    if (email!.isEmpty) {
                      return "Name is required";
                    } else
                      return null;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  controller: email,
                  validator: (email) {
                    if (email!.isEmpty ||
                        !email.contains("@") ||
                        !email.contains(".")) {
                      return "Enter valid email";
                    } else
                      return null;
                  },
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  validator: (pass1) {
                    if (pass1!.isEmpty || pass1.length < 6) {
                      return "Password must should be greater than 6";
                    } else {
                      return null;
                    }
                  },
                  textInputAction: TextInputAction.next,
                  controller: pass,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  validator: (pass1) {
                    if (pass1!.isEmpty || pass1.length < 6) {
                      return "Password must should be greater than 6";
                    } else if (pass.text != conformpass.text) {
                      return "Password not matched";
                    } else {
                      return null;
                    }
                  },
                  controller: conformpass,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(330, 50)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ))),
                  onPressed: () async {
                    final valid1 = formkey1.currentState!.validate();
                    if (valid1) {
                      /// if form state is valid data from the textfield will upload to db
                      var data =
                          await sqlFunction.userfound(name.text, email.text);

                      if (data.isNotEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('User already exist')));
                      } else {
                        Addnewuser(name.text, email.text, pass.text);
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          action:
                              SnackBarAction(label: 'UNDO', onPressed: () {}),
                          content: const Text('Invalid username / password')));
                    }
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.black),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Alredy have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Login_Form()));
                      },
                      child: const Text(
                        "Login!!",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
