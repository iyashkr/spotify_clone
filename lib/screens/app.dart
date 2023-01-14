import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/yourlibrary.dart';
import 'package:spotify_clone/screens/home.dart';
import 'package:spotify_clone/screens/search.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Tabs = [Home(), Search(), YourLibray()];
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        onTap: (currentIndex) {
          currentTabIndex = currentIndex;
          setState(() {
            
          });
        },
        selectedLabelStyle: TextStyle(color: Colors.white),
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black45,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books, color: Colors.white),
              label: 'Your Library')
        ],
      ),
    );
  }
}
