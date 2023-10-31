import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

Text quickSandText({
  required String text,
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  TextAlign? textAlign,
  TextDecoration? textDecoration,
}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    style: GoogleFonts.quicksand(
      color: color ?? blackColor,
      fontSize: fontSize ?? 14.sp,
      fontWeight: fontWeight ?? FontWeight.normal,
      decoration: textDecoration ?? TextDecoration.none,
    ),
  );
}

TextStyle quickSandTextStyle({
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
}) {
  return GoogleFonts.sourceSansPro(
    color: color ?? blackColor,
    fontSize: fontSize ?? 14.sp,
    fontWeight: fontWeight ?? FontWeight.normal,
  );
}
