import 'package:flutter/material.dart';
import 'package:musik/src/data/music_data.dart';
import 'package:musik/src/models/music_model.dart';
import 'package:musik/src/ui/widgets/favourite_item.dart';
import 'package:musik/src/ui/widgets/header.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HeaderWidget(),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: _buildMusicList([...musicData, ...musicData, ...musicData, ...musicData, ...musicData]),
      ),
    );
  }

  Widget _buildMusicList(List<Music> songs) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: songs.length,
        itemBuilder: (context, index) {
          final Music song = songs[index];
          return FavouriteItem(music: song);
        },
      ),
    );
  }
}
