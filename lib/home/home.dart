import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

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
                      child: Stack(
                        children: [
                          _storyItem('내 스토리'),
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
                    _storyItem('sxe1xo'),
                    _storyItem('ss0_xa'),
                    _storyItem('5.219_'),
                    _storyItem('gracexilver'),
                  ],
                ),
              ),
            ),

            SliverList(
              delegate: SliverChildListDelegate([
                Column(
                  children: [
                    Container(
                      width: 390,
                      height: 50,
                      // color: Colors.red,
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
                                  image: AssetImage(
                                    'assets/images/ProfileImage.jpg',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 15, top: 5),
                                child: Text(
                                  'limse0rin',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  '회원님을 위한 추천',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 200),
                            child: Icon(Icons.more_horiz),
                          ),
                        ],
                      ),
                    ),
                    Container(width: 390, height: 390, color: Colors.black),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite_border_rounded, size: 30,),
                        ),
                        Text('10'),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Symbols.mode_comment, opticalSize: 40, size: 27)
                        ),
                        Text('5'),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Symbols.send, size: 30, opticalSize: 40,)
                        )
                      ],
                    ),
                  ],
                ), // Column - 사진 피드 1개
              ]),
            ),
          ], // Slivers
        ),
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
