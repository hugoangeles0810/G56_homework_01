import 'package:flutter/material.dart';
import 'package:g56_homework_01/src/pages/home/home_page.dart';
import 'package:g56_homework_01/src/pages/search/search_page.dart';
import 'package:g56_homework_01/src/utilities/color.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomePage(),
    SearchPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: _bottomBar(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Popular Recipes", style: TextStyle(color: accentColor)),
          Icon(Icons.expand_more, color: accentColor),
        ],
      ),
      centerTitle: true,
      elevation: 0.0,
      actions: [
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.more_horiz,
                color: accentColor,
                size: 26.0,
              ),
            ))
      ],
    );
  }

  Widget _bottomBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
      ],
      currentIndex: _selectedIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: accentColor,
      backgroundColor: primaryColor,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
