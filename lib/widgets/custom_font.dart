import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFont extends StatelessWidget {
  final title;
  final size;
  final color;
  final fontwidget;
  CustomFont({super.key, this.title, this.size, this.color, this.fontwidget});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: size ?? 20,
        fontWeight: fontwidget ?? FontWeight.bold,
      ),
    );
  }
}
