import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Constante del valor primario
  static const primaryColor = Color.fromARGB(255, 23, 124, 240);
  //Constante del color secundario
  static const secondaryColor = Color.fromARGB(255, 172, 21, 202);
  //Constante del color de fondo
  static const backColor = Color.fromARGB(255, 226, 226, 226);
  //constante de color de botones y otros widgets
  static const widgetsColor = Color.fromARGB(255, 68, 231, 19);
  //constante de color de botones y otros widgets deshabilitados
  static const disabledWidgetColor = Color.fromARGB(255, 132, 134, 150);

  //Definición del tema de color y estilo de la app
  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    //colores del tema claro
    scaffoldBackgroundColor: backColor,
    appBarTheme: AppBarTheme(
      color: secondaryColor,
      titleTextStyle: GoogleFonts.lato(
        color: backColor,
        fontSize: 28.5,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: const IconThemeData(
      color: primaryColor,
      size: 35.0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(widgetsColor),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.pacifico(
            fontSize: 22.5,
          ),
        ),
      ),
    ),

    //estilo de los textos
    textTheme: TextTheme(
      //Títulos de primer nivel
      headlineLarge: GoogleFonts.acme(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: primaryColor,
        decoration: TextDecoration.underline,
        decorationColor: primaryColor,
        decorationStyle: TextDecorationStyle.double,
        decorationThickness: 2.5,
      ),

      headlineMedium: GoogleFonts.akayaKanadaka(
        fontSize: 25.0,
        fontWeight: FontWeight.w700,
        color: secondaryColor,
      ),

      //Fuente para textos muy pequeños
      bodySmall: GoogleFonts.montserrat(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: secondaryColor,
          fontStyle: FontStyle.italic),
    ),
  );
}
