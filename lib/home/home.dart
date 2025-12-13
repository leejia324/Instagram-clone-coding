import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 스크롤시 사라지게 구현하기
      appBar: AppBar(
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
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ListView(
          children: [
            Container(
              height: 130,
              // color: Colors.black,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: ClipRRect(
                                borderRadius: BorderRadiusGeometry.circular(
                                  150,
                                ),
                                child: Image.asset(
                                  'assets/images/ProfileImage.jpg',
                                  width: 90,
                                  height: 90,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 60, left: 60),
                              child: Stack(
                                children: [
                                  Container(
                                    width: 27,
                                    height: 27,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(150),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 1, top: 1),
                                    child: Icon(Symbols.add_circle, fill: 1),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 6),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text(
                            '내 스토리',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
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
                          padding: EdgeInsets.only(right: 10),
                          child: Text(
                            'sxe1xo',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
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
                          padding: EdgeInsets.only(right: 10),
                          child: Text(
                            'ss0_xa',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, left: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
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
                          padding: EdgeInsets.only(right: 10),
                          child: Text(
                            '5.219_',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
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
                          child: Text(
                            'gracexilver',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
