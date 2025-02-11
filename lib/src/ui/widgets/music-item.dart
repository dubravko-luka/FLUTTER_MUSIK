import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:musik/src/state/player_state.dart';
import 'package:musik/src/models/music_model.dart';

class MusicItem extends StatelessWidget {
  final Music music;

  const MusicItem({
    super.key,
    required this.music,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Container(
            color: Colors.white,
            child: ListTile(
              onTap: () {
                context.read<PlayerState>().play(music.url);
              },
              contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
              leading:
                  ClipRRect(borderRadius: BorderRadius.circular(5.0), child: Image.network(music.imageUrl, width: 50, height: 50, fit: BoxFit.cover)),
              title: Text(music.title, style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: Colors.black)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(music.artist, style: const TextStyle(color: Colors.grey, fontSize: 10.0)),
                  Text(music.timeAgo, style: const TextStyle(color: Colors.grey, fontSize: 10.0)),
                ],
              ),
              trailing: PopupMenuButton<String>(
                icon: const Icon(Icons.more_vert, color: Colors.black),
                onSelected: (value) {},
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'add_playlist',
                    child: Row(
                      children: const [
                        Icon(Icons.playlist_add, color: Colors.black),
                        SizedBox(width: 8.0),
                        Text('Thêm vào danh sách phát'),
                      ],
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'share',
                    child: Row(
                      children: const [
                        Icon(Icons.share, color: Colors.black),
                        SizedBox(width: 8.0),
                        Text('Chia sẻ'),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
