import 'package:Clima/screens/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:Clima/theme_provider.dart';
import 'package:provider/provider.dart';
// import 'package:Clima/utilities/custom_theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        return ThemeProvider();
      },
      child: ClimaApp(),
    ),
  );
}

class ClimaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: CustomTheme.theme,
      theme: Provider.of<ThemeProvider>(context).themeData,
      darkTheme: Provider.of<ThemeProvider>(context).dark,
      themeMode: Provider.of<ThemeProvider>(context).themeMode,
      home: LoadingScreen(),
    );
  }
}
