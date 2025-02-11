import 'package:flutter/material.dart';
import 'package:musik/src/data/album_data.dart';
import 'package:musik/src/models/album_model.dart';
import 'package:musik/src/ui/widgets/album_item.dart';
import 'package:musik/src/ui/widgets/header.dart';

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HeaderWidget(),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: _buildMusicList([...albumData, ...albumData, ...albumData, ...albumData, ...albumData]),
      ),
    );
  }

  Widget _buildMusicList(List<Album> albums) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: albums.length,
        itemBuilder: (context, index) {
          final Album album = albums[index];
          return AlbumItem(album: album);
        },
      ),
    );
  }
}
