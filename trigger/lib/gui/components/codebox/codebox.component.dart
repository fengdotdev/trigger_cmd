import 'package:flutter/material.dart';
import 'package:trigger/gui/primitives/colors.dart';

class CodeBoxComponent extends StatelessWidget {
  final String code;

  final int maxLines;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final Color backgroundColor1;
  final Color backgroundColor2;
  final Color textColor;
  final Color borderColor;
  final BorderRadius borderRadius;
  final double borderWidth;
  final double width;
  final double height;

  CodeBoxComponent({super.key, required this.code, this.maxLines = 5})
    : fontSize = 16.0,
      fontWeight = FontWeight.w400,
      fontFamily = 'monospace',
      backgroundColor1 = EvaColors.headerGradientEnd,
      backgroundColor2 = EvaColors.headerGradientStart,
      textColor = EvaColors.textPrimary,
      borderRadius = BorderRadius.circular(4.0),
      borderWidth = 4.0,
      borderColor = EvaColors.lclBright,
      width = 600.0,
      height = 50.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: backgroundColor1),
      width: width,
      height: height,
      child: TextField(
        decoration: InputDecoration(
          filled: false,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,

          contentPadding: EdgeInsets.all(12.0),
        ),
        maxLines: maxLines,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
          color: textColor,
        ),
        strutStyle: StrutStyle(fontSize: fontSize, fontFamily: fontFamily),
        controller: TextEditingController(text: code),
        readOnly: true,
      ),
    );
  }
}
