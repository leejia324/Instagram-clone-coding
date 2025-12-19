import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String name;

  const StoryItem({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 10),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(150),
              child: Image.asset(
                'assets/images/ProfileImage.jpg',
                width: 90,
                height: 90,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SizedBox(height: 6),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(name, style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
