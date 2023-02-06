import 'package:flutter/material.dart';
import 'package:flutter_advanced/presentation/resources/font_manager.dart';

TextStyle getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontWeight: fontWeight,
      fontFamily: FontConstants.fontFamily,
      fontSize: fontSize,
      color: color);
}
