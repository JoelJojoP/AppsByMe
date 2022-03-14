import 'package:bmi_monitor/BMI_Calc.dart';
import 'package:flutter/material.dart';
import 'config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    t.addListener(() {
      setState(() {});
    });
  }

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
      themeMode: t.currentTheme(),
    );
  }
}
