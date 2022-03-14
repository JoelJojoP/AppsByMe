library config.global;

import 'package:flutter/material.dart';

AppTheme t = AppTheme();

class AppTheme with ChangeNotifier {
  static bool isDark = false;
  ThemeMode currentTheme() {
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme(bool dark) {
    isDark = dark;
    notifyListeners();
  }
}
