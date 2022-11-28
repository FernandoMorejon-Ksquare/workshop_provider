import 'package:flutter/material.dart';

//HERE YOU WILL CREATE YOUR PROVIDER CLASS INHERIT TO CHANGE NOTIFIER
//DONT FORGET TO ADD THE NOTIFY LISTENERS AT THE END OF YOUR FUNCTIONS
class ThemeModeProvider extends ChangeNotifier {
  Color primaryColor = Colors.orange;
  Color backgroundColor = Colors.white;
  var iconFloatingElevationButton = const Icon(Icons.mode_night);

  void changeThemeToDark() {
    primaryColor = Colors.black;
    backgroundColor = Colors.grey;
    iconFloatingElevationButton = const Icon(Icons.sunny);
    notifyListeners();
  }

  void changeThemeToLight() {
    primaryColor = Colors.orange;
    backgroundColor = Colors.white;
    iconFloatingElevationButton = const Icon(Icons.mode_night);
    notifyListeners();
  }
}
