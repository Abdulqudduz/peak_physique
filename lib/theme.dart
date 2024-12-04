import 'package:flutter/material.dart';

enum AppTheme {
  Light,
  Dark,
  SlateMist,
  System,
}

// Slate Mist Theme
ThemeData slateMistTheme = ThemeData(
  primaryColor: Colors.blueGrey[900],
  scaffoldBackgroundColor: Colors.blueGrey[900],
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
    elevation: 4,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.blueGrey[900],
    selectedItemColor: Colors.green,
    unselectedItemColor: Colors.blueGrey[300],
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(color: Colors.white, fontSize: 16),
    bodyMedium: TextStyle(color: Colors.white, fontSize: 14),
    headlineSmall: TextStyle(
        color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(color: Colors.white, fontSize: 20),
  ),
  iconTheme: IconThemeData(
    color: Colors.green,
  ),
  chipTheme: ChipThemeData(
    backgroundColor: Colors.blueGrey[800],
    labelStyle: const TextStyle(color: Colors.white),
    selectedColor: Colors.green,
    secondarySelectedColor: Colors.green[700],
    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    brightness: Brightness.dark,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(Colors.green),
      // backgroundColor: WidgetStateProperty.all(Colors.blueGrey[800]),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
      // textStyle: WidgetStateProperty.all(
      //   const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      // ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: Colors.green,
    iconColor: Colors.green,
    filled: true,
    fillColor: Colors.blueGrey[800],
    errorStyle: TextStyle(color: Colors.red),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      borderSide: const BorderSide(color: Colors.blueGrey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      borderSide: const BorderSide(
        color: Colors.green,
        width: 2.0,
      ),
    ),
    labelStyle: TextStyle(color: Colors.blueGrey[100]),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.green, // Set the cursor color here
    selectionColor:
        Colors.green.withOpacity(0.4), // Highlighted text selection color
    selectionHandleColor: Colors.green, // Drag handle color
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
  ),
  progressIndicatorTheme: ProgressIndicatorThemeData(
    color: Colors.green,
    linearTrackColor: Colors.blueGrey[700],
  ),
  popupMenuTheme: PopupMenuThemeData(
    color: Colors.blueGrey[800],
    textStyle: const TextStyle(color: Colors.white),
  ),
  dialogTheme: DialogTheme(
    backgroundColor: Colors.blueGrey[800],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    contentTextStyle: const TextStyle(
      color: Colors.blueGrey,
      fontSize: 16,
    ),
  ),
  dividerTheme: DividerThemeData(
    color: Colors.green,
  ),
);

// Light Theme
ThemeData lightTheme = ThemeData(
  primaryColor: Colors.red,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.red,
    foregroundColor: Colors.white,
    elevation: 4,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(color: Colors.black, fontSize: 16),
    bodyMedium: TextStyle(color: Colors.black, fontSize: 14),
    headlineSmall: TextStyle(
        color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(color: Colors.black, fontSize: 20),
  ),
  dialogTheme: DialogTheme(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    titleTextStyle: const TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    contentTextStyle: const TextStyle(
      color: Colors.black,
      fontSize: 16,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: Colors.blue,
    iconColor: Colors.blue,
    filled: true,
    fillColor: Colors.white,
    errorStyle: TextStyle(color: Colors.red),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      borderSide: const BorderSide(color: Colors.blueGrey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      borderSide: const BorderSide(
        color: Colors.blue,
        width: 2.0,
      ),
    ),
    labelStyle: TextStyle(color: Colors.blueGrey[100]),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.blue, // Set the cursor color here
    selectionColor:
        Colors.blue.withOpacity(0.4), // Highlighted text selection color
    selectionHandleColor: Colors.blue, // Drag handle color
  ),
  iconTheme: IconThemeData(
    color: Colors.blue,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(Colors.blue),
      // backgroundColor: WidgetStateProperty.all(Colors.blueGrey[800]),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
      // textStyle: WidgetStateProperty.all(
      //   const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      // ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  ),
);

// Dark Theme
ThemeData darkTheme = ThemeData(
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.blue,
    foregroundColor: Colors.white,
    elevation: 4,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  textTheme: const TextTheme(
    bodySmall: TextStyle(color: Colors.white, fontSize: 16),
    bodyMedium: TextStyle(color: Colors.white, fontSize: 14),
    headlineSmall: TextStyle(
        color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
    headlineMedium: TextStyle(color: Colors.white, fontSize: 20),
  ),
  dialogTheme: DialogTheme(
    backgroundColor: Colors.blue.shade900,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    contentTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 16,
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    prefixIconColor: Colors.blue,
    iconColor: Colors.blue,
    filled: true,
    fillColor: Colors.white,
    errorStyle: TextStyle(color: Colors.red),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      borderSide: const BorderSide(color: Colors.blueGrey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      borderSide: const BorderSide(
        color: Colors.blue,
        width: 2.0,
      ),
    ),
    labelStyle: TextStyle(color: Colors.blueGrey[100]),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Colors.blue, // Set the cursor color here
    selectionColor:
        Colors.blue.withOpacity(0.4), // Highlighted text selection color
    selectionHandleColor: Colors.blue, // Drag handle color
  ),
  iconTheme: IconThemeData(
    color: Colors.blue,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(Colors.blue),
      // backgroundColor: WidgetStateProperty.all(Colors.blueGrey[800]),
      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
      // textStyle: WidgetStateProperty.all(
      //   const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      // ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  ),
);
