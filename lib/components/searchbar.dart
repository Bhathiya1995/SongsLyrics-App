import 'package:flutter/material.dart';
import 'package:flappy_search_bar/flappy_search_bar.dart';

class SongCard {
  final String songName;
  final String artistName;

  SongCard({this.songName, this.artistName});
}

class Searchbar extends StatelessWidget {
  Future<List<SongCard>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return SongCard(
          songName: "Song Name - Anagathaye", artistName: "Artist - Wayo");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
      headerPadding: EdgeInsets.symmetric(horizontal: 10),
      listPadding: EdgeInsets.symmetric(horizontal: 10),
      onSearch: search,
      onItemFound: (SongCard song, int index) {
        return ListTile(
            title: Text(song.songName), subtitle: Text(song.artistName));
      },
    );
  }
}
