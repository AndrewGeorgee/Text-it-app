import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color_constant.dart';
import 'dimension_constants.dart';

class AppFontTextStyles {
  static TextStyle poppins({
    double? height,
    Color color = ColorConstants.white,
    bool isUnderline = false,
    double fontSize = DimensionConstants.px14,
    double? letterSpacing,
  }) =>
      GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: color,
        height: height,
        decoration:
            isUnderline ? TextDecoration.underline : TextDecoration.none,
        letterSpacing: letterSpacing,
      );
}
