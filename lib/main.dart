import 'package:flutter/material.dart';
import 'package:islamii/Ahadeth_details/ahadeth_details_screens.dart';
import 'package:islamii/home/home_screen.dart';
import 'package:islamii/quran_details/quran_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        dividerTheme: DividerThemeData(color: Color(0XFFB7935F), thickness: 3),
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
          primary: Color(0XFFB7935F),
          secondary: Color(0XFFB7935F).withOpacity(.57),
          onPrimary: Colors.white,
          onSecondary: Colors.black,
        ),
        appBarTheme: AppBarTheme(
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
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        QuranDetailsScreen.routeName: (_) => QuranDetailsScreen(),
        AhadethDetailsScreens.routeName: (_) => AhadethDetailsScreens(),
      },
    );
  }
}
