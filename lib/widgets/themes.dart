import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightThem(BuildContext context) => ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black, size: 30.0),
          textTheme: Theme.of(context).textTheme,
        ),
      );
  static ThemeData dartThem(BuildContext context) =>
      ThemeData(brightness: Brightness.light);
}
