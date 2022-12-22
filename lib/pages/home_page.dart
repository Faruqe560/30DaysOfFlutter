import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_8_hourse/pages/home_widgets/catalog_header.dart';
import 'package:flutter_8_hourse/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter_8_hourse/models/catalog.dart';
import 'package:flutter_8_hourse/widgets/drawer.dart';
import 'package:flutter_8_hourse/widgets/item_widget.dart';
import 'package:flutter_8_hourse/widgets/themes.dart';

import 'catalog_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatelogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.cartRoute);
        },
        backgroundColor: MyTheme.darkBluishColor,
        child: Icon(
          CupertinoIcons.cart,
          color: Colors.white,
          size: 32.0,
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CalalogHedder(),
              if (CatelogModel.items != null && CatelogModel.items.isNotEmpty)
                CataLogList().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
