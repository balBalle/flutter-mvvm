import 'package:flutter/material.dart';

class AppTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    cardColor: Colors.grey[100],
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.black87,
      ),
      titleLarge: TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.deepPurple,
    scaffoldBackgroundColor: const Color.fromARGB(
      255,
      18,
      18,
      18,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(
        255,
        31,
        31,
        31,
      ),
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    cardColor: const Color.fromARGB(
      255,
      44,
      44,
      44,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.white70,
      ),
      titleLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
