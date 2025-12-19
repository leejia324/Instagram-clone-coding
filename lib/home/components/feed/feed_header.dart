import 'package:flutter/material.dart';

class FeedHeader extends StatelessWidget {
  final String name;

  const FeedHeader({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 50,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/ProfileImage.jpg'),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8, top: 5),
                child: Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text('회원님을 위한 추천', style: TextStyle(fontSize: 12)),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 200),
            child: Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }
}
