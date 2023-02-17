import 'package:demo2/HomePage/home_screen.dart';
import 'package:demo2/Hotline/hotline_screen.dart';
import 'package:demo2/Mood/moodPage.dart';
import 'package:demo2/MusicPage/musicList.dart';
import 'package:demo2/NavBar.dart';
import 'package:demo2/Test/test_screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; // total height n width of device
    final tabs = [MoodPage(), Test(), HomePage(), MusicList(), HotlinePage()];
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: tabs[_currentIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          currentIndex: _currentIndex,
          unselectedFontSize: 10,
          selectedFontSize: 15,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions),
                label: 'Mood',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment_outlined),
                label: 'Test',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.music_note),
                label: 'Music',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.phone),
                label: 'Hotline',
                backgroundColor: Colors.black),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
