import 'package:flutter/material.dart';
import 'package:instagram_clone_coding/home/components/feed/feed_footer.dart';
import 'feed_header.dart';

class Feed extends StatelessWidget {
  final String name;
  final int likeCount, commentCount;

  const Feed({super.key, required this.name, required this.likeCount, required this.commentCount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        FeedHeader(name: name),
        Container(width: 390, height: 390, color: Colors.black),
        FeedFooter(likeCount: likeCount, commentCount: commentCount,),
      ],
    );
  }
}
