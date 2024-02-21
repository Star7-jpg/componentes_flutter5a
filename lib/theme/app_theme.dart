import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Constante del valor primario
  static const primaryColor = Colors.black;
  //Constante del color secundario
  static const secondaryColor = Color.fromARGB(255, 172, 21, 202);
  //Constante del color de fondo
  static const backColor = Color.fromARGB(255, 226, 226, 226);

  //Definición del tema de color y estilo de la app
  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: secondaryColor),
    textTheme: TextTheme(
      //Títulos de primer nivel
      headlineLarge: GoogleFonts.acme(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: primaryColor,
          decoration: TextDecoration.underline,
          decorationColor: primaryColor,
          decorationStyle: TextDecorationStyle.double,
          decorationThickness: 2.5),
      //Fuente para textos muy pequeños
      bodySmall: GoogleFonts.montserrat(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: secondaryColor,
          fontStyle: FontStyle.italic),
    ),
  );
}
