import 'package:file_type_check/Theme/theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _ThemeData = lightMode;

  ThemeData get themeData => _ThemeData;

  set themeData(ThemeData themeData) {
    _ThemeData = themeData;
    notifyListeners();
  }

void toggleTheme(){
    if(_ThemeData == lightMode){
      themeData = darkMode;
    }else{
      themeData = darkMode;
    }
  }
}