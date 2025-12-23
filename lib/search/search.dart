import 'package:flutter/material.dart';
import 'package:instagram_clone_coding/search/components/search_box.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SearchBox(width: 350),
            Divider(color: Color(0xfff3f5f7)),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                itemCount: 50,
                itemBuilder: (BuildContext context, int index) {
                  return Container(color: Colors.black);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
