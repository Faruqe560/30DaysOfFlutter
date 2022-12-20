import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_8_hourse/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [Text("Hello Faruqe Hasan")],
        ),
      ),
    );
  }
}
