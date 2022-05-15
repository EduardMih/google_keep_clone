import 'package:flutter/material.dart';

const color = Color(0xFF5F6368);

class Styles
{
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.white60,
          onPrimary: color,
          secondary: Colors.grey,
          onSecondary: Colors.grey,
          background: Colors.white,
          onBackground: Colors.grey,
          surface: Colors.grey,
          onSurface: Colors.grey,
          error: Colors.grey,
          onError: Colors.grey,
      )
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark, 
      primary: Colors.black, 
      onPrimary: Colors.white, 

      secondary: Colors.grey, 
      onSecondary: Colors.black,

      error: Colors.red, 
      onError: Colors.white,

      background: Colors.black12, 
      onBackground: Colors.white,

      surface: Colors.black, 
      onSurface: Colors.white
      )
  );

}