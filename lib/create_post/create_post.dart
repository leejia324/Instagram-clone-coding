import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c0f14),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 400,
              backgroundColor: Color(0xff0c0f14),
              title: Text(
                '새 게시물',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              pinned: true,
              leading: Padding(
                padding: EdgeInsets.only(left: 10),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Symbols.close, color: Colors.white, size: 40),
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    '다음',
                    style: TextStyle(
                      color: Color(0xff6b8bec),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
              flexibleSpace: Stack(
                children: [
                  Container(color: Colors.white),
                  Container(height: kToolbarHeight, color: Color(0xff0c0f14)),
                ],
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: _HeaderDelegate(
                child: Container(
                  color: Color(0xff0c0f14),
                  height: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Text(
                              '최근 항목',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                            ),
                            SizedBox(width: 230),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xff202227),
                                  borderRadius: BorderRadius.circular(150)
                              ),
                              child: Icon(Icons.layers_outlined, color: Colors.white,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(color: Colors.white);
              }, childCount: 30),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _HeaderDelegate({required this.child});

  @override
  Widget build(BuildContext context,
      double shrinkOffset,
      bool overlapsContent,) {
    return child;
  }

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(_) => false;
}
