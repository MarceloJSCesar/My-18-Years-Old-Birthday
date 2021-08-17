import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle headerTitleTextStyle = GoogleFonts.adventPro(
    fontSize: 20,
    color: Colors.white,
  );
  // website
  static final TextStyle websiteTitleTextStyle = GoogleFonts.poppins(
    fontSize: 22,
    color: Colors.white,
    fontWeight: FontWeight.w300,
  );
  static final TextStyle websiteTextStyle = GoogleFonts.poppins(
    fontSize: 20,
    color: Colors.grey,
  );
  static final TextStyle websiteCardTextStyle = GoogleFonts.poppins(
    fontSize: 18,
    color: Colors.grey,
  );
  // mobile
  static final TextStyle mobileTitleTextStyle = GoogleFonts.poppins(
    fontSize: 19,
    color: Colors.white,
    fontWeight: FontWeight.w300,
  );
  static final TextStyle mobileTextStyle = GoogleFonts.adventPro(
    fontSize: 20,
    color: Colors.grey,
  );
}
