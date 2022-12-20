import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
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
                    TextSpan(text: "E")
                  ]),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Your Username",
                      labelText: "Username",
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Your Username",
                      labelText: "Username",
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("Login"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
