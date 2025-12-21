import 'package:flutter/material.dart';
import 'package:instagram_clone_coding/home/components/feed/feed.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:instagram_clone_coding/home/components/story/story_item.dart';
import 'package:instagram_clone_coding/home/components/story/active_story_item.dart';
import 'package:instagram_clone_coding/home/components/story/close_friends_story_item.dart';
import 'package:instagram_clone_coding/home/components/story/read_story_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              snap: true,
              scrolledUnderElevation: 0,
              backgroundColor: Colors.white,

              titleSpacing: 10,
              title: Row(
                children: [
                  Text(
                    'Instagram',
                    style: TextStyle(
                      fontFamily: 'Norican',
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5, bottom: 5),
                    child: Icon(Symbols.keyboard_arrow_down),
                  ),
                ],
              ),

              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Symbols.app_settings_alt,
                    weight: 600,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    Symbols.favorite_rounded,
                    weight: 600,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Symbols.send,
                    weight: 600,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            SliverToBoxAdapter(
              child: Container(
                height: 130,
                // color: Colors.black,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Stack(
                        children: [
                          StoryItem(name: '내 스토리'),
                          Positioned(
                            right: 17,
                            bottom: 27,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 20,
                            bottom: 30,
                            child: Icon(Icons.add_circle),
                          ),
                        ],
                      ),
                    ),
                    // StoryItem(name: 'sxe1xo'),
                    CloseFriendsStoryItem(name: 'sxe1xo'),
                    CloseFriendsStoryItem(name: 'limsuujin1'),
                    ActiveStoryItem(name: 'ss0_xa'),
                    ActiveStoryItem(name: '5.219_'),
                    ReadStoryItem(name: 'gracexilver'),
                    ReadStoryItem(name: 'taehheeyam'),
                  ],
                ),
              ),
            ),

            SliverList(
              delegate: SliverChildListDelegate([
                Feed(name: 'limse0rin', likeCount: 10, commentCount: 5,),
                Feed(name: '_yeo_.o', likeCount: 7, commentCount: 3,),
                Feed(name: '1isianthus7', likeCount: 22, commentCount: 7)
              ]),
            ),
          ], // Slivers
        ),
      ), // CustomScrollView
    ); // Scaffold
  }
}
