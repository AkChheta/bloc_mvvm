import 'package:flutter/material.dart';

class CTitleText extends StatelessWidget {
  final String title;
  final bool color;
  const CTitleText({super.key, required this.title, this.color = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      // style:
      textAlign: TextAlign.center,
    );
  }
}

class CSubTitleText extends StatelessWidget {
  final String subTitle;
  final TextAlign textAlign;
  final bool color;

  const CSubTitleText(
      {super.key,
      required this.subTitle,
      required this.textAlign,
      this.color = false});

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      // style:
      textAlign: textAlign,
    );
  }
}
