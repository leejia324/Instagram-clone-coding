import 'package:flutter/material.dart';

class ActiveStoryItem extends StatelessWidget {
  final String name;

  const ActiveStoryItem({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, left: 5),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Container(
              width: 100,
              height: 100,
              // padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: AlignmentGeometry.bottomLeft,
                  end: AlignmentGeometry.topRight,
                  colors: [
                    Color(0xfffce80a),
                    Color(0xfffc3a0a),
                    Color(0xffc80afc),
                  ],
                ),
              ),
              alignment: Alignment.center,
              child: Container(
                width: 93,
                height: 93,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/ProfileImage.jpg'),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 1),
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Text(name, style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
