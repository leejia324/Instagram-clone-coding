import 'package:flutter/material.dart';

class ProfileStat extends StatelessWidget {
  final String count;
  final String text;

  const ProfileStat({super.key, required this.count, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Text(count, style: TextStyle(fontWeight: FontWeight.w700)),
            Text(text),
          ],
        ),
        SizedBox(width: 25),
      ],
    );
  }
}
