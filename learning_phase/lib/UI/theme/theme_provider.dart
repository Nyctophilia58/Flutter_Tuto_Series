import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dark_theme.dart';
import 'light_theme.dart';

final themeProvider = NotifierProvider<ThemeNotifier, ThemeData>(ThemeNotifier.new);

class ThemeNotifier extends Notifier<ThemeData>{
  @override
  ThemeData build() => lightTheme;

  bool get isDarkMode => state == darkTheme;

  void toggleTheme() {
    state = state == lightTheme ? darkTheme : lightTheme;
  }

  void setTheme(ThemeData themeData) {
    state = themeData;
  }
}

