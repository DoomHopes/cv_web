import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle kTextStyle =
    GoogleFonts.lato(fontStyle: FontStyle.normal, fontSize: kTextSize);

TextStyle kLinkStyle = GoogleFonts.lato(
    fontStyle: FontStyle.normal, fontSize: kTextSize, color: Colors.blue);

TextStyle kTitleStyle = GoogleFonts.allerta(
    fontStyle: FontStyle.normal,
    fontSize: kTitleSize,
    fontWeight: FontWeight.bold);

const double kTitleSize = 15;

const double kTextSize = 10;
