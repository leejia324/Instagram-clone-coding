import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // 스크롤시 사라지게 구현하기
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            scrolledUnderElevation: 0,
            backgroundColor: Colors.white,
            leadingWidth: 300,
            leading: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, bottom: 10),
                  child: Text(
                    'Instagram',
                    style: TextStyle(
                      fontFamily: 'Norican',
                      color: Colors.black,
                      fontSize: 30,
                    ),
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
                  Symbols.favorite,
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
            // backgroundColor: Colors.green,
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
                          child: _storyItem('내 스토리'),
                        ),
                        _storyItem('sxe1xo'),
                        _storyItem('ss0_xa'),
                        _storyItem('5.219_'),
                        _storyItem('gracexilver'),
                ],
              ),
            ),
          ),
        ], // Slivers
      ), // CustomScrollView
    ); // Scaffold
  }
}

Widget _storyItem(String name) {
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
