import 'package:flutter/material.dart';

class BodyTitle extends StatelessWidget {
  const BodyTitle({
    super.key, required this.title_text, required this.TextColor, required this.textsize,
  });
  final String title_text;
  final Color TextColor;
  final double textsize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Text(
        title_text,
        style: TextStyle(
          fontSize: textsize,
          fontWeight: FontWeight.w600,
          color: TextColor,
        ),
      ),
    );
  }
}