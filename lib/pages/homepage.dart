import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

//import custom components
import 'package:song_app/components/searchbar.dart';
import 'package:song_app/components/headerwithsearchbox.dart';
import 'package:song_app/constant.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HederWithSearchBox(size: size),
          Row(
            children: [
              TitleLine(text: 'New Songs'),
              FlatButton(
                color: kPrimaryColor,
                onPressed: () {},
                child: Text('More'),
              )
            ],
          )
        ],
      ),
    );
  }
}

class TitleLine extends StatelessWidget {
  const TitleLine({
    this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 7,
              color: kPrimaryColor.withOpacity(0.15),
            ),
          )
        ],
      ),
    );
  }
}
