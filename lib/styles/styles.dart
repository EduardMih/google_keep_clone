import 'package:flutter/material.dart';

const color = Color.fromARGB(20, 0, 0, 0);

class Styles
{
  ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: color,
          onPrimary: Colors.black,

          secondary: Colors.grey,
          onSecondary: Colors.grey,

          background: Colors.white,
          onBackground: Colors.grey,
          surface: Colors.grey,
          onSurface: Colors.grey,
          error: Colors.grey,
          onError: Colors.grey,
      ),

    bottomAppBarColor: color,
    cardColor: Colors.transparent,
    
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      splashColor: Colors.transparent,
      backgroundColor: color
    ),
    
    
  );

  ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark, 
      primary: Color.fromARGB(40, 255, 255, 255), 
      onPrimary: Colors.white, 

      secondary: Colors.black12, 
      onSecondary: Colors.white,

      error: Colors.red, 
      onError: Colors.white,

      background: Colors.black12, 
      onBackground: Colors.white,

      surface: Colors.black, 
      onSurface: Colors.white
      ),

    bottomAppBarColor: const Color.fromARGB(40, 255, 255, 255),
    cardColor: const Color.fromARGB(0, 255, 255, 255),

    scaffoldBackgroundColor: const Color.fromARGB(30, 255, 255, 255),
    
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      splashColor: Colors.transparent,
      backgroundColor: Color.fromARGB(40, 255, 255, 255)
    ),
  );

}
