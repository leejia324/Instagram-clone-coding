import 'package:flutter/material.dart';
import 'package:instagram_clone_coding/home/home.dart';
import 'package:instagram_clone_coding/search/search.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    SearchPage(),
    Text('data'),
    Text('data'),
    Text('data'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(fill: 1, weight: 700),
          unselectedItemColor: Colors.black,
          unselectedIconTheme: IconThemeData(weight: 400),
          backgroundColor: Colors.white,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Symbols.home, size: 30),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Symbols.search, size: 30),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Symbols.rectangle_add, size: 30),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Symbols.movie, size: 30),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin, size: 30),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
