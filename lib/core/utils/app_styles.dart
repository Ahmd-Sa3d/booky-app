import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  static TextStyle montserrat18SemiBold(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: responsiveFontSize(16, context),
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle montserrat14SMedium(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: responsiveFontSize(14, context),
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle montserrat16SMedium(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: responsiveFontSize(16, context),
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle montserrat20SBold(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: responsiveFontSize(20, context),
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle spectra20regular(BuildContext context) {
    return GoogleFonts.spectral(
      fontSize: responsiveFontSize(18, context),
      fontWeight: FontWeight.w400,
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
