import 'package:flutter/material.dart';
import 'package:Clima/theme.dart';

class ThemeProvider with ChangeNotifier {
  // Default theme mode is system
  ThemeMode _themeMode = ThemeMode.system;
  ThemeData _customThemeData = lightTheme;
  ThemeData dark = darkTheme;

  ThemeMode get themeMode => _themeMode;
  ThemeData get themeData => _customThemeData;

  // Set a specific theme mode
  void setThemeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }

  // Set a specific custom theme
  void setCustomTheme(ThemeData themeData) {
    _customThemeData = themeData;
    _themeMode = ThemeMode.light; // Use the custom theme in light mode
    notifyListeners();
  }

  // Toggle between light, dark, slateMist, and system themes
  void toggleTheme(AppTheme theme) {
    switch (theme) {
      case AppTheme.Light:
        setThemeMode(ThemeMode.light);
        _customThemeData = lightTheme;
        break;
      case AppTheme.Dark:
        setThemeMode(ThemeMode.dark);
        _customThemeData = darkTheme;
        break;
      case AppTheme.SlateMist:
        setCustomTheme(slateMistTheme);
        break;
      case AppTheme.System:
        _customThemeData = lightTheme;
        setThemeMode(ThemeMode.system);
        break;
    }
    notifyListeners();
  }
}
