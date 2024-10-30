import 'package:flutter/material.dart';
import 'package:ui_challenge1/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI_challenege',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 52, 129, 137),
      ),
      home: const MainScreen(),
    );
  }
}
