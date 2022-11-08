import 'package:coffeeshop/mainhome/homepage/homepage.dart';
import 'package:coffeeshop/mainhome/maps/maps.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MainHomes extends StatefulWidget {
  const MainHomes({super.key});

  @override
  State<MainHomes> createState() => _MainHomesState();
}

int _page = 0;
const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white);

List<Widget> _widgetOptions = <Widget>[
  HomePage(),
  Maps(),
  Text(
    'likes',
    style: optionStyle,
  ),
  Text(
    'Profile',
    style: optionStyle,
  ),
];

class _MainHomesState extends State<MainHomes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _widgetOptions[_page],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: Colors.black,
            hoverColor: Colors.black12,
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 600),
            tabBackgroundColor: Colors.white,
            color: Colors.white,
            tabs: [
              GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.map,
                text: 'Maps',
              ),
              GButton(
                icon: LineIcons.heart,
                text: 'Likes',
              ),
              GButton(
                icon: LineIcons.user,
                text: 'Profile',
              ),
            ],
            selectedIndex: _page,
            onTabChange: (int index) {
              setState(() {
                _page = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
