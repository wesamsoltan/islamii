import 'package:flutter/material.dart';

class AppStyle {
  static bool isDark = true;
  static Color lightPrimaryColor = Color(0XFFB7935F);
  static Color darkPrimaryColor = Color(0XFF141A2E);
  static Color darkSecandry = Color(0XFFFACC1D);
  static ThemeData lightTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.white),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: Colors.black,
      ),
      bodySmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: lightPrimaryColor,
      ),
    ),
    dividerTheme: DividerThemeData(color: lightPrimaryColor, thickness: 3),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedIconTheme: IconThemeData(color: Colors.white),
      selectedIconTheme: IconThemeData(color: Colors.black),
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.black,
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      primary: lightPrimaryColor,
      secondary: lightPrimaryColor.withOpacity(.57),
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      tertiary: lightPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    cardTheme: CardTheme(
      margin: EdgeInsets.all(16),
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 30,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: darkPrimaryColor),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 25,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: darkSecandry,
      ),bodySmall: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: darkSecandry,
    ),
    ),
    dividerTheme: DividerThemeData(color: darkSecandry, thickness: 3),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedIconTheme: IconThemeData(color: Colors.white),
      selectedIconTheme: IconThemeData(color: darkSecandry),
      unselectedItemColor: Colors.white,
      selectedItemColor: darkSecandry,
    ),
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      primary: darkPrimaryColor,
      secondary: darkPrimaryColor.withOpacity(.57),
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      tertiary: darkSecandry,
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    cardTheme: CardTheme(
      margin: EdgeInsets.all(16),
      color: darkPrimaryColor,
      surfaceTintColor: darkPrimaryColor,
      elevation: 30,
    ),
  );
}
