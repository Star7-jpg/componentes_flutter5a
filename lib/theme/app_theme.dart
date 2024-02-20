import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Constante del valor primario
  static const primaryColor = Colors.black12;
  //Constante del color de fondo
  static const backColor = Color.fromARGB(255, 226, 226, 226);
  //Constante del color secundario
  static const secondaryColor = Color.fromARGB(255, 124, 98, 129);

  //Definición del tema de color y estilo de la app
  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(color: primaryColor),
    textTheme: TextTheme(
      //Títulos de primer nivel
      headlineLarge: GoogleFonts.acme(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      //Fuente para textos muy pequeños
      bodySmall: GoogleFonts.montserrat(
        fontSize: 14.0,
        fontWeight: FontWeight.w400,
        color: secondaryColor,
      ),
    ),
  );
}
