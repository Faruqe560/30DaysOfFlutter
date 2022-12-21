import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_8_hourse/models/catalog.dart';
import 'package:flutter_8_hourse/widgets/drawer.dart';
import 'package:flutter_8_hourse/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dumyList = List.generate(50, (index) => CatelogModel.items[0]);
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Center(child: Text("AppBar")),
      ),
      body: ListView.builder(
        itemCount: dumyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dumyList[index],
          );
        },
      ),
    );
  }
}
