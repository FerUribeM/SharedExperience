import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// style in font all text app
class MyFontStyle {
  /// regular style in font
  static TextStyle regularFont(
      {double size = 20,
      Color color = Colors.white,
      FontWeight fontWeight = FontWeight.normal}) {
    return GoogleFonts.arvo(
        color: color, fontSize: size, fontWeight: fontWeight);
  }
  /// regular style in font roboto
  static TextStyle regularFontRoboto(
      {double size = 14,
      Color color = Colors.white,
      FontWeight fontWeight = FontWeight.normal}) {
    return GoogleFonts.roboto(
        color: color, fontSize: size, fontWeight: fontWeight);
  }

  /// regular style in font roboto bold
  static TextStyle boldFontRoboto(
      {double size = 20,
      Color color = Colors.white,
      FontWeight fontWeight = FontWeight.bold}) {
    return GoogleFonts.roboto(
        color: color, fontSize: size, fontWeight: fontWeight);
  }

  /// regular style in font bold
  static TextStyle boldFont(
      {double size = 22,
        Color color = Colors.white,
        FontWeight fontWeight = FontWeight.bold}) {
    return GoogleFonts.arvo(
        color: color, fontSize: size, fontWeight: fontWeight);
  }

  /// regular style in font
  static TextStyle titleFont({
        double size = 40,
        Color color = Colors.white,
        FontWeight fontWeight = FontWeight.bold}) {
    return GoogleFonts.arvo(
        color: color, fontSize: size, fontWeight: fontWeight);
  }
}
