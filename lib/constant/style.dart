import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

TextStyle headingStyle(BuildContext context) {
  return GoogleFonts.poppins(
      fontWeight: FontWeight.bold, fontSize: 24.sp, color: Colors.white);
}

TextStyle titleStyle(BuildContext context) {
  return GoogleFonts.poppins(
      fontSize: 16.5.sp, fontWeight: FontWeight.w600, color: Colors.white);
}

TextStyle subtitleStyle(BuildContext context) {
  return GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
}

TextStyle subtitleGreyStyle(BuildContext context) {
  return GoogleFonts.poppins(
    fontSize: 16.sp,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );
}

EdgeInsets dPagePadding = const EdgeInsets.symmetric(
  horizontal: 20.0,
);

EdgeInsets dLeftPadding = const EdgeInsets.only(
  left: 20.0,
);
EdgeInsets dRightPadding = const EdgeInsets.only(
  right: 20.0,
);
