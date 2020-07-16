import 'package:flutter/material.dart';
import 'package:song_app/constant.dart';

//Import custom pages
import 'package:song_app/pages/homepage.dart';
import 'package:song_app/pages/songslistpage.dart';
import 'package:song_app/pages/artistslistpage.dart';
import 'package:song_app/pages/categoriespage.dart';

//Import custom components
import 'package:song_app/components/bottomappbar.dart';

void main() {
  runApp(SongApp());
}

class SongApp extends StatefulWidget {
  @override
  _SongAppState createState() => _SongAppState();
}

class _SongAppState extends State<SongApp> {
  int selectPageNo = 0;

  void pageChanged(int index) {
    setState(() {
      selectPageNo = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      selectPageNo = index;
      pageController.animateToPage(index,
          duration: Duration(microseconds: 3000), curve: Curves.ease);
    });
  }

  PageController pageController =
      PageController(initialPage: 0, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomBar(
          selectPageNo: selectPageNo,
          bottomTapped: (index) {
            bottomTapped(index);
          },
        ),
        body: PageView(
          controller: pageController,
          onPageChanged: (index) {
            pageChanged(index);
          },
          children: [
            HomePage(),
            SongsListPage(),
            ArtistsListPage(),
            CategoriesPage(),
          ],
        ),
      ),
    );
  }
}
