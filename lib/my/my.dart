import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:instagram_clone_coding/my/components/profile_stat.dart';
import 'package:instagram_clone_coding/my/components/button.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(
    length: 4,
    vsync: this,
    initialIndex: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    floating: true,
                    scrolledUnderElevation: 0,
                    backgroundColor: Colors.white,
                    title: Row(
                      children: [
                        Text(
                          'xin.o9_',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                          ),
                        ),
                        Icon(Symbols.keyboard_arrow_down),
                      ],
                    ),
                    actions: [
                      Icon(Symbols.alternate_email, size: 30, opticalSize: 30),
                      SizedBox(width: 10),
                      Icon(Symbols.add_box, size: 30, opticalSize: 30),
                      SizedBox(width: 10),
                      Icon(Symbols.menu, size: 30, opticalSize: 30),
                      SizedBox(width: 10),
                    ],
                  ),
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20, left: 20),
                              child: Container(
                                width: 100,
                                height: 100,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    SizedBox(width: 20),
                                    Text(
                                      '지아',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    ProfileStat(count: '11', text: '게시물'),
                                    ProfileStat(count: '284', text: '팔로워'),
                                    ProfileStat(count: '229', text: '친구'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            '@yeomsh09',
                            style: TextStyle(color: Color(0xff374bc1)),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Button(text: '프로필 편집'),
                            SizedBox(width: 5),
                            Button(text: '프로필 공유'),
                            SizedBox(width: 5),
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Color(0xfff1f2f6),
                              ),
                              child: Icon(Icons.person_add_outlined, size: 18),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        TabBar(
                          controller: tabController,
                          overlayColor: WidgetStatePropertyAll(
                            Colors.transparent,
                          ),
                          labelColor: Colors.black,
                          unselectedLabelColor: Color(0xff6f7179),
                          indicatorColor: Colors.black,
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerColor: Color(0xffeaeaea),
                          tabs: [
                            Column(
                              children: [
                                Icon(Icons.grid_on_rounded, size: 25),
                                SizedBox(height: 10),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.movie_creation_outlined, size: 25),
                                SizedBox(height: 10),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.sync_rounded, size: 25),
                                SizedBox(height: 10),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Symbols.person_pin, size: 25),
                                SizedBox(height: 10),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 600,
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 1,
                                  mainAxisSpacing: 1,
                                ),
                            itemCount: 11,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(color: Colors.black);
                            },
                          ),
                          Center(
                            child: Column(
                              children: [
                                SizedBox(height: 50),
                                Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        '전 세계에 여러분의',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                          height: 1,
                                        ),
                                      ),
                                      Text(
                                        '순간을 공유해보세요',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '첫 릴스 만들기',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff4858dd),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 1,
                                  mainAxisSpacing: 1,
                                  childAspectRatio: 0.75,
                                ),
                            itemCount: 2,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(color: Colors.black);
                            },
                          ),
                          Center(
                            child: Column(
                              children: [
                                SizedBox(height: 50),
                                Container(
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(150),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                  child: Icon(Symbols.person_pin, size: 45),
                                ),
                                SizedBox(height: 15),
                                Text(
                                  '내가 태그된 사진과 동영상',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Container(
                                  width: 350,
                                  child: Column(
                                    children: [
                                      Text(
                                        '사람들이 회원님을 사진 및 동영상에 태그하면 태그된 사진 및',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xff6f7279),
                                        ),
                                      ),
                                      Text(
                                        '동영상이 여기에 표시됩니다,',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xff6f7279),
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
