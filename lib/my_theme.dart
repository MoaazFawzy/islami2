import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color lightColor = Color(0xffB7935F);
  static ThemeData lightTheme = ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: lightColor,
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedLabelStyle: GoogleFonts.quicksand(fontSize: 12),
          selectedLabelStyle: GoogleFonts.quicksand(fontSize: 12)),
      primaryColor: lightColor,
      textTheme: TextTheme(
        bodyLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xff242424)),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xff242424)),
        titleLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Color(0xff242424)),
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black54, size: 30)));
  static ThemeData darkTheme = ThemeData(
      textTheme: TextTheme(
        bodyLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xff242424)),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xff242424)),
        titleLarge: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Color(0xff242424)),
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true));
}
