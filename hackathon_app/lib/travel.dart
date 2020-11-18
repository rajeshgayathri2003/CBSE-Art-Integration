import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackathon_app/widgets/hotels.dart';
import 'widgets/destination.dart';

class Travel extends StatefulWidget {
  @override
  _TravelState createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  int _selectedIndex = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        },
        child: Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Theme.of(context).accentColor
                : Color(0xFFE7EBEE),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Icon(
            _icons[index],
            size: 25.0,
            color: _selectedIndex == index
                ? Theme.of(context).primaryColorLight
                : Color(0xFF000000),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 120.0),
                        child: Text(
                          'Where do you want to go?',
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _icons
                          .asMap()
                          .entries
                          .map((MapEntry map) => _buildIcon(map.key))
                          .toList(),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: TextField(
                            decoration: InputDecoration(
                                hintText: "Enter the place",
                                hintStyle: TextStyle(fontSize: 18)),
                          )),
                          SizedBox(
                            width: 14.0,
                          ),
                          Container(
                            child: Icon(Icons.search),
                          ),
                        ],
                      ),
                    ),
                    DestinationCarousel(),
                    SizedBox(
                      width: 14.0,
                    ),
                    HotelCarousel()
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
