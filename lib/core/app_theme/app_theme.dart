import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      primarySwatch: Colors.cyan,
      scaffoldBackgroundColor: Colors.blueGrey[50],
      fontFamily: 'Montserrat Bold',
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 18,
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w500,
              fontFamily: 'Montserrat Bold',
            ),
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )),
      ),
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Color.fromARGB(255, 203, 242, 255),
          elevation: 4,
          shadowColor: Colors.black,
          titleTextStyle: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          )));
}
