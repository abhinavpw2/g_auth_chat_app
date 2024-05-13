import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginapp/src/constants/colors.dart';

class CTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(
        color: darkColor, fontSize: 28.0, fontWeight: FontWeight.bold),
    headline2: GoogleFonts.montserrat(
        color: darkColor, fontSize: 24.0, fontWeight: FontWeight.w700),
    headline3: GoogleFonts.poppins(
        color: darkColor, fontSize: 24.0, fontWeight: FontWeight.w700),
    headline4: GoogleFonts.poppins(
        color: darkColor, fontSize: 16.0, fontWeight: FontWeight.w600),
    headline6: GoogleFonts.poppins(
        color: darkColor, fontSize: 14.0, fontWeight: FontWeight.w600),
    bodyText1: GoogleFonts.poppins(
        color: darkColor, fontSize: 14.0, fontWeight: FontWeight.normal),
    bodyText2: GoogleFonts.poppins(
        color: darkColor, fontSize: 14.0, fontWeight: FontWeight.normal),
  );
  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(
        color: whiteColor, fontSize: 28.0, fontWeight: FontWeight.bold),
    headline2: GoogleFonts.montserrat(
        color: whiteColor, fontSize: 24.0, fontWeight: FontWeight.w700),
    headline3: GoogleFonts.poppins(
        color: whiteColor, fontSize: 24.0, fontWeight: FontWeight.w700),
    headline4: GoogleFonts.poppins(
        color: whiteColor, fontSize: 16.0, fontWeight: FontWeight.w600),
    headline6: GoogleFonts.poppins(
        color: whiteColor, fontSize: 14.0, fontWeight: FontWeight.w600),
    bodyText1: GoogleFonts.poppins(
        color: whiteColor, fontSize: 14.0, fontWeight: FontWeight.normal),
    bodyText2: GoogleFonts.poppins(
        color: whiteColor, fontSize: 14.0, fontWeight: FontWeight.normal),
  );
}
