import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final TextStyle? textStyle;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? textColor;
  // final String? fontFamily;
  final TextAlign ? textAlign;


  const CustomText({super.key, this.text,
    this.textStyle,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    // this.fontFamily,


  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign:textAlign,
      style: GoogleFonts.nunito(
          color: textColor,
          fontSize: fontSize,
          fontWeight: fontWeight,


      ),
    );
  }
}
