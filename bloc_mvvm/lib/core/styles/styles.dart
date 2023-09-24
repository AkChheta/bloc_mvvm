import 'package:flutter/material.dart'
    show Color, Colors, FontWeight, TextStyle;

TextStyle headerTextStyle(
        {double fontSize = 24,
        FontWeight fontWeight = FontWeight.w700,
        Color color = const Color(0xff000000),
        double letterSpacing = -0.2}) =>
    TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      color: color,
    );

TextStyle subTitleTextStyle({
  double fontSize = 11,
  FontWeight fontWeight = FontWeight.w400,
}) =>
    TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: 0.1,
      color: const Color(0xff455154),
    );

TextStyle verifiedTextStyle({
  double fontSize = 11,
  FontWeight fontWeight = FontWeight.w400,
}) =>
    TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.1,
      color: const Color(0xff174334),
    );

TextStyle titleSemiBoldStyle({
  double fontSize = 16,
  FontWeight fontWeight = FontWeight.w600,
  Color color = const Color(0xff343A3F),
}) =>
    TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: -0.2,
      color: color,
    );

TextStyle buttonTextStyle(
        {double fontSize = 16,
        FontWeight fontWeight = FontWeight.w700,
        bool enabled = false}) =>
    TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: -0.2,
      color: enabled ? Colors.white : const Color(0xff455154),
    );

TextStyle subTitle2TextStyle({
  double fontSize = 10,
  FontWeight fontWeight = FontWeight.w600,
  Color color = const Color(0xff979797),
}) =>
    TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: -0.2,
      color: color,
    );
