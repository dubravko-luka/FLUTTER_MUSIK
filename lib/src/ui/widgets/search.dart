import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // Create a list to hold search results (mock data here for demonstration)
  final List<Map<String, String>> _results = [
    {'title': 'Super Shy', 'artist': 'NewJeans', 'time': '2 years ago'},
    {'title': 'Seven (feat. Latto)', 'artist': 'Jung Kook, Latto', 'time': '2 years ago'},
    {'title': 'FLOWER', 'artist': 'JISOO', 'time': '2 years ago'},
    {'title': 'Fast Forward', 'artist': 'JEON SOMI', 'time': 'a year ago'},
    {'title': 'Queencard', 'artist': '(G)I-DLE', 'time': '2 years ago'},
    {'title': 'ETA', 'artist': 'NewJeans', 'time': 'a year ago'},
    {'title': 'Better Things', 'artist': 'aespa', 'time': ''},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: 'Tìm bài hát, nghệ sĩ...',
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _results.length,
        itemBuilder: (context, index) {
          final result = _results[index];
          return ListTile(
            leading: Icon(Icons.music_note),
            title: Text(result['title'] ?? ''),
            subtitle: Text('${result['artist']} • ${result['time']}'),
          );
        },
      ),
    );
  }
}
