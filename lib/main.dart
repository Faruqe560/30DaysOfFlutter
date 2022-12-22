import 'package:flutter/material.dart';
import 'package:flutter_8_hourse/pages/cart_page.dart';
import 'package:flutter_8_hourse/pages/home_details_page.dart';
import 'package:flutter_8_hourse/pages/home_page.dart';
import 'package:flutter_8_hourse/pages/login_page.dart';
import 'package:flutter_8_hourse/utils/routes.dart';
import 'package:flutter_8_hourse/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '30 days Flutter',
      themeMode: ThemeMode.system,
      theme: MyTheme.lightThem(context),

      darkTheme: MyTheme.dartThem(context),

      //home: HomePage(),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        //"/home": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
        // MyRoutes.homeDetailsRout: (context) => HomeDetailsPage()
      },
    );
  }
}
