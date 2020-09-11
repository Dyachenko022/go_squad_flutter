import 'package:flutter/material.dart';
import 'package:go_squad/navigation_bar_destinations/chat.dart';
import 'package:go_squad/navigation_bar_destinations/create_game.dart';
import 'package:go_squad/navigation_bar_destinations/home.dart';
import 'package:go_squad/navigation_bar_destinations/profile.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;

  final tabs = [
    Home(),
    CreateGame(),
    Chat(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: IndexedStack(
        index: _currentIndex,
        children: tabs,
      ),
      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[700],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('home',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            title: Text('game',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('chat',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('profile',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w300,
              ),
            ),
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
