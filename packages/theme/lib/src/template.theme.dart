// default constants
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double defaultElevation = 4;
const double defaultIconSize = 24;
const double defaultOffset = 16;
const double defaultPadding = 16;
const double defaultRadius = 16;

final defaultBoxShadowColor = const Color(0xFFeeeeee).withOpacity(0.5);

// rosepine color palette
// https://rosepinetheme.com/palette.html#rose-pine
const baseColor = Color(0xFF191724);
const surfaceColor = Color(0xFF1f1d2e);
const overlayColor = Color(0xFF26233a);
const inactiveColor = Color(0xFF555169);
const subtleColor = Color(0xFF6e6a86);
const textColor = Color(0xFFe0def4);
const loveColor = Color(0xFFeb6f92);
const goldColor = Color(0xFFf6c177);
const roseColor = Color(0xFFebbcba);
const pineColor = Color(0xFF31748f);
const foamColor = Color(0xFF9ccfd8);
const irisColor = Color(0xFFc4a7e7);
const highlightColor = Color(0xFF2a2837);
const highlightInactiveColor = Color(0xFF211f2d);
const highlightOverlayColor = Color(0xFF3a384a);

// text styles
const textStyleFontPkg = TextStyle(package: 'theme');

final TextStyle defaultTextStyle = GoogleFonts.inter(
  color: textColor,
  fontSize: 14,
  fontWeight: FontWeight.normal,
);

final TextStyle baseHeaderStyle = GoogleFonts.poppins(
  color: surfaceColor,
  fontSize: 14,
  fontWeight: FontWeight.bold,
);

final TextStyle baseTextStyle = GoogleFonts.inter(
  color: baseColor,
  fontSize: 14,
  fontWeight: FontWeight.normal,
);

final TextStyle titleStyle = GoogleFonts.poppins(
  color: textColor,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
