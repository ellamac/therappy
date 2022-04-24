import 'package:flutter/material.dart';
import 'package:therappy/appframe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const AppFrame(title: 'TherAppy'),
      theme: ThemeData(
        colorScheme: ColorScheme(
            primary: Colors.teal,
            primaryVariant: Colors.teal.shade900,
            secondary: Colors.orange.shade400,
            secondaryVariant: Colors.orangeAccent,
            surface: Colors.white,
            background: Colors.teal.shade50,
            error: Colors.red.shade900,
            onPrimary: Colors.white,
            onSecondary: Colors.grey.shade800,
            onSurface: Colors.grey.shade800,
            onBackground: Colors.grey.shade800,
            onError: Colors.white,
            brightness: Brightness.light),
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal,
        backgroundColor: Colors.teal[50],
        fontFamily: 'Roboto',
        /* TEXT THEMES */
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontSize: 16.0, color: Colors.red),
          headline1: TextStyle(
              fontSize: 36.0, fontFamily: 'Philosopher', color: Colors.white),
        ),
        /* BOTTOM NAV THEME */
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.teal[50],
          selectedItemColor: Colors.teal,
        ),
        /* ELEVATED BUTTON THEME */
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              textStyle:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
        ),
        /* CARD THEME */
        cardTheme: CardTheme(
          margin: const EdgeInsets.all(5.0),
          elevation: 3,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
