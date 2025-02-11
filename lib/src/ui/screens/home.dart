import 'package:flutter/material.dart';
import 'package:musik/src/data/music_data.dart';
import 'package:musik/src/models/music_model.dart';
import 'package:musik/src/ui/widgets/header.dart';
import 'package:musik/src/ui/widgets/music-item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HeaderWidget(),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          _buildSectionTitle(context, Icons.timer, 'Nhạc Gần Đây'),
          _buildMusicList(musicData),
          const SizedBox(height: 20),
          _buildSectionTitle(context, Icons.queue_music, 'Nhạc Mới Nhất'),
          _buildMusicList(musicData),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(children: [
        Padding(padding: const EdgeInsets.only(right: 5.0), child: Icon(icon, color: Colors.white)),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        )
      ]),
    );
  }

  Widget _buildMusicList(List<Music> songs) {
    return Column(
      children: songs.map((song) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: MusicItem(music: song),
        );
      }).toList(),
    );
  }
}
