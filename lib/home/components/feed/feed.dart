import 'package:flutter/material.dart';
import 'feed_header.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class Feed extends StatelessWidget {
  final String name;

  const Feed({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        FeedHeader(name: name),
        Container(width: 390, height: 390, color: Colors.black),
        Row(
          children: [
            IconButton(
              // splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              visualDensity: VisualDensity(horizontal: -4),
              onPressed: () {},
              icon: Icon(Icons.favorite_border_rounded, size: 30),
            ),
            Padding(padding: EdgeInsets.only(right: 10), child: Text('10')),
            IconButton(
              visualDensity: VisualDensity(horizontal: -4),
              onPressed: () {},
              icon: Icon(Symbols.mode_comment, opticalSize: 40, size: 27),
            ),
            Padding(padding: EdgeInsets.only(right: 10), child: Text('5')),
            IconButton(
              visualDensity: VisualDensity(horizontal: -4),
              onPressed: () {},
              icon: Icon(Symbols.send, size: 30, opticalSize: 40),
            ),
          ],
        ),
      ],
    );
  }
}
