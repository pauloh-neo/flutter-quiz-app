import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({this.style, this.fontSize, required this.text, super.key});

  final double? fontSize;
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
