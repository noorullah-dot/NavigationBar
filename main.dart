import 'package:flutter/material.dart';
import 'package:navigationbar/feed.dart_screen.dart';
import 'package:navigationbar/home.dart_screen.dart';
import 'package:navigationbar/message.dart_screen.dart';
import 'package:navigationbar/profile.dart_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigationbar',
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class Bottomnavigationbar extends StatefulWidget {
  @override
  _BottomnavigationbarState createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {
  int currentindex = 0;
  final screens = [Home(), Profile(), Feed(), Message()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomaNavigationBar'),
      ),
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 25,
          unselectedFontSize: 12,
          iconSize: 25,
          backgroundColor: Colors.amberAccent,
          currentIndex: currentindex,
          onTap: (index) => setState(() => currentindex = index),
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            // backgroundColor: Colors.blue),

            BottomNavigationBarItem(
              label: 'Feed',
              icon: Icon(Icons.favorite),
            ),
            //backgroundColor: Colors.red),

            BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: 'Message',
              icon: Icon(Icons.message),
              //backgroundColor: Colors.pink),
            )
          ]),
    );
  }
}
