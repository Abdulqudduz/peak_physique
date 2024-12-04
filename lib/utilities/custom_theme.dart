import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.red,
      ),
      textSelectionTheme:
          TextSelectionThemeData(selectionColor: Colors.blue.withOpacity(0.2)),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        prefixIconColor: Colors.grey,
        iconColor: Colors.blue,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
