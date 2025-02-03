import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgcolor;
  final Color textColor;

  const Button({
    super.key,
    required this.text,
    required this.bgcolor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 45,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
