import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class SearchBox extends StatelessWidget {
  final double width;
  const SearchBox({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Container(
            height: 40,
            width: width,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xfff3f5f7),
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xff8e9498),
                ),
                hintText: '검색',
                hintStyle: TextStyle(color: Color(0xff8e9498)),
                contentPadding: EdgeInsets.all(5),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xfff3f5f7)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xfff3f5f7))
                )
              ),
            ),
          ),
          // TextButton(
          //     onPressed: () {},
          //     child: Text('취소',
          //       style: TextStyle(
          //         color: Colors.black,
          //         fontSize: 15,
          //       ),
          //     )
          // ) // 검색창 눌렀을 때 나오는 취소 버튼
        ],
      ),
    );
  }
}
