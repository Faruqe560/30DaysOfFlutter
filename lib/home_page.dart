import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(Colors.accents.length),
      ),
      appBar: AppBar(
        
      ),
      body: Center(
        child: Column(
          children: [Text("Hello Faruqe Hasan")],
        ),
      ),
    );
  }
}
