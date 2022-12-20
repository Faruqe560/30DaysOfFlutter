//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_8_hourse/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHomePage(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(
        Duration(seconds: 1),
      );
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/loginImage.png",
                fit: BoxFit.cover,
              ),
              Text.rich(
                TextSpan(
                    text: "W",
                    style: TextStyle(
                        fontSize: 35,
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: "ELCOM",
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                      TextSpan(text: "E"),
                    ]),
              ),
              Text(
                "-$name",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Your Username",
                          labelText: "Username",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "UserName Connot be Empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Your Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password Connot be Empty";
                          } else if (value.length < 6) {
                            return "Password Length Should be atleast6";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                      //   },
                      //   child: Text("Login"),
                      //   style: TextButton.styleFrom(
                      //     minimumSize: Size(150, 40),
                      //   ),
                      // ),
                      Material(
                        color: Color.fromARGB(255, 124, 64, 255),
                        borderRadius: BorderRadius.circular(40.0),
                        child: InkWell(
                          onTap: () => moveToHomePage(context),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            height: 50.0,
                            width: changeButton ? 100.0 : 200.0,
                            alignment: Alignment.center,
                            //decoration: BoxDecoration(),
                            child: changeButton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
