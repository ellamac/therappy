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
        title: 'Flutter Demo',
        home: const AppFrame(title: 'TherAppy'),
        theme: ThemeData(
            primarySwatch: Colors.teal,
            fontFamily: 'Roboto',
            textTheme: const TextTheme(
              bodyText1: TextStyle(fontSize: 16.0, color: Colors.red),
              headline1: TextStyle(
                  fontSize: 36.0,
                  fontFamily: 'Philosopher',
                  color: Colors.white),
            ),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    textStyle: const TextStyle(fontSize: 16.0)))));
  }
}
