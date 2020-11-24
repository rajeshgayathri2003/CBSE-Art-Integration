import 'package:flutter/material.dart';
import 'home.dart';
import 'art.dart';
import 'travel.dart';
import 'festivals.dart';

void main() {
  runApp(new MaterialApp(
    home: NavBar(),
  ));
}

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;
  final tabs = [
    ImageSlider(),
    Aipans(),
    Festival(),
    Travel(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Welcome to Uttarakhand',
            style: TextStyle(color: Colors.white, fontSize: 28.0),
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(Icons.home),
              title: Text("Home")),
          BottomNavigationBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(Icons.art_track_rounded),
              title: Text("Art")),
          BottomNavigationBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(Icons.book),
              title: Text("Literature")),
          BottomNavigationBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(Icons.map_sharp),
              title: Text('Maps')),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: tabs[_currentIndex],
    );
  }
}
