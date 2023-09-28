import 'package:flutter/material.dart';

class MyThemData{
  static bool isdark =false;
  static const Color lightprimary =Color(0xFFB7935F);
  static const Color secondaryprimary =Color(0xFFA28965);
  static const Color Onlightsecondaryprimary =Colors.black;

  static const Color Ondarksecondaryprimary =Colors.white;
  static const Color darkprimary =Color(0xFF141A2E);
  static const Color darksecondary =Color(0xFFFFAC1D);

  static ThemeData LightThem =ThemeData(
    cardTheme: CardTheme(
        elevation: 10,
        color: Color(0xFFE5DFDF),
        margin: EdgeInsets.symmetric(vertical: 48, horizontal: 16),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18))),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.black87, fontSize: 28)),
    colorScheme: ColorScheme.fromSeed(
      seedColor: lightprimary,
      primary:lightprimary,
      secondary: secondaryprimary,
      onPrimary: Onlightsecondaryprimary,
      onSecondary: Colors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor:Onlightsecondaryprimary,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 33,
          color: Onlightsecondaryprimary
        )),
    useMaterial3: true,
  );
  static ThemeData DarkThem =ThemeData(
    cardTheme: CardTheme(
      surfaceTintColor: Colors.transparent,
        elevation: 10,
        color: Color(0xFFE5DFDF),
        margin: EdgeInsets.symmetric(vertical: 48, horizontal: 16),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18))),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 28)),
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkprimary,
      primary:darkprimary,
      secondary: darksecondary,
      onPrimary: Ondarksecondaryprimary,
      onSecondary: Colors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: darksecondary,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
          size: 33,
          color: darksecondary
        )),
    useMaterial3: true,
  );
}