import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class FeedFooter extends StatelessWidget {
  final int likeCount, commentCount;

  const FeedFooter({
    super.key,
    required this.likeCount,
    required this.commentCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          // splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          visualDensity: VisualDensity(horizontal: -4),
          onPressed: () {},
          icon: Icon(Icons.favorite_border_rounded, size: 30),
        ),
        Padding(
          padding: EdgeInsets.only(right: 5),
          child: Text('${likeCount}'),
        ),
        IconButton(
          visualDensity: VisualDensity(horizontal: -4),
          onPressed: () {},
          icon: Icon(Symbols.mode_comment, opticalSize: 25, size: 27),
        ),
        Padding(
          padding: EdgeInsets.only(right: 5),
          child: Text('${commentCount}'),
        ),
        IconButton(
          visualDensity: VisualDensity(horizontal: -4),
          onPressed: () {},
          icon: Icon(Symbols.send, size: 30, opticalSize: 40),
        ),
        Expanded(
          child: Align(
            alignment: AlignmentGeometry.centerRight,
            child: IconButton(
              visualDensity: VisualDensity(horizontal: -4),
              onPressed: () {},
              icon: Icon(Icons.bookmark_border_rounded, size: 30),
            ),
          ),
        ),
      ],
    );
  }
}
