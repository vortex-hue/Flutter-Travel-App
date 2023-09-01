import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  AppText({key,
    this.size=16,
    required this.text,
    this.color=Colors.black45}) :super(key :key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
