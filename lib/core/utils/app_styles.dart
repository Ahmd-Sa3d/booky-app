import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static TextStyle montserrat18SemiBold(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: responsiveFontSize(16, context),
      fontWeight: FontWeight.w600,
    );
  }

  static double responsiveFontSize(double fontSize, BuildContext context) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;
    double lowerLimit = fontSize * .8;
    double upperLimit = fontSize * 1.2;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width < 600) {
      return width / 400;
    } else if (width < 900) {
      return width / 700;
    } else {
      return width / 900;
    }
  }
}
