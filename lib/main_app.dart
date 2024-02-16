import 'package:flutter/material.dart';
import 'package:practica3/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 26, 26, 26),
        appBarTheme:
            const AppBarTheme(color: Color.fromARGB(120, 122, 89, 122)),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'sans-serif',
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(222, 222, 222, 222),
          ),
          bodySmall: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(222, 222, 222, 222),
          ),
        ),
      ),
    );
  }
}
