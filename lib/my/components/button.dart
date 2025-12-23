import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;

  const Button({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Color(0xfff1f2f6),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
