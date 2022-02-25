import 'package:bmi_monitor/BMI_Calc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Calculator(),
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(
        colorScheme: const ColorScheme(
            primary: Colors.teal,
            primaryVariant: Colors.tealAccent,
            secondary: Colors.red,
            secondaryVariant: Colors.red,
            surface: Colors.purple,
            background: Colors.black,
            error: Colors.grey,
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onSurface: Colors.white,
            onBackground: Colors.white,
            onError: Colors.red,
            brightness: Brightness.dark),
      ),
      themeMode: ThemeMode.light,
    );
  }
}
