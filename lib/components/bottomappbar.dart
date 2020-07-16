import 'package:flutter/material.dart';

//import constant
import 'package:song_app/constant.dart';

class BottomBar extends StatelessWidget {
  final int selectPageNo;
  final Function bottomTapped;

  const BottomBar({this.selectPageNo, this.bottomTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: kPrimaryColor,
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          backgroundColor: kPrimaryColor,
          icon: Icon(Icons.music_note),
          title: Text('Songs'),
        ),
        BottomNavigationBarItem(
          backgroundColor: kPrimaryColor,
          icon: Icon(Icons.mic),
          title: Text('Artists'),
        ),
        BottomNavigationBarItem(
          backgroundColor: kPrimaryColor,
          icon: Icon(Icons.library_music),
          title: Text('Categories'),
        ),
      ],
      currentIndex: this.selectPageNo,
      onTap: (index) {
        this.bottomTapped(index);
      },
    );
  }
}
