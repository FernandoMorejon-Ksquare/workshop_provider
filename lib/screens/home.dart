import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/controllers/theme_mode_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //YOU WOULD MOVE YOUR VARIABLE INSIDE THE PROVIDER CLASS
  //HERE YOU WILL CREATE YOUR INSTANCE OF THE PROVIDER CLASS

  @override
  Widget build(BuildContext context) {
    final modeThemeProvider = Provider.of<ThemeModeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        //THIS VARIABLE WILL CHANGE IT STATE
        backgroundColor: modeThemeProvider.primaryColor,
      ),
      body: Container(
        //THIS VARIABLE WILL CHANGE IT STATE
        color: modeThemeProvider.backgroundColor,
      ),
      floatingActionButton: FloatingActionButton(
          //THIS VARIABLE WILL CHANGE IT STATE
          backgroundColor: modeThemeProvider.primaryColor,
          //THIS VARIABLE WILL CHANGE IT STATE
          child: modeThemeProvider.iconFloatingElevationButton,
          onPressed: () {
            //HERE YOU WOULD CALL YOUR INSTANCE.YOURFUNCTION
            // DONT FORGET TO ADD THE IF STATEMENT
            modeThemeProvider.primaryColor == Colors.orange
                ? modeThemeProvider.changeThemeToDark()
                : modeThemeProvider.changeThemeToLight();
          }),
    );
  }
}
