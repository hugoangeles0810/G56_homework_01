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

  static const List<Widget> _pages = <Widget>[HomePage(), SearchPage(), HomePage(), SearchPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex % 2 == 0 ? _appBar() : _appBarSearch(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: _bottomBar(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Popular Recipes", style: TextStyle(color: accentColor)),
          Icon(Icons.expand_more, color: accentColor),
        ],
      ),
      centerTitle: true,
      elevation: 0.0,
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.more_horiz,
                color: accentColor,
                size: 26.0,
              ),
            ))
      ],
    );
  }

  AppBar _appBarSearch() {
    return AppBar(
        title: const Text("Search", style: TextStyle(color: accentColor)),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.more_horiz,
                  color: accentColor,
                  size: 26.0,
                ),
              ))
        ],
        leading: Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.arrow_back_ios,
                color: accentColor,
                size: 26.0,
              ),
            ))
    );
  }

  Widget _bottomBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Bookmark"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: "Profile"),
      ],
      currentIndex: _selectedIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: accentColor,
      unselectedItemColor: const Color(0xFFC5C5C5),
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
