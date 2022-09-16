import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText(
      {Key? key,
      required this.text,
      required this.color,
      required this.fontWeight,
      required this.fontSize
      })
      : super(key: key);
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
          fontStyle: FontStyle.normal,
          fontSize:fontSize,
          color: Colors(color),
        ));
  }
}
