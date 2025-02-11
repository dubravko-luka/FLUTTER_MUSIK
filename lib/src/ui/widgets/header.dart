import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 0.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(Icons.music_note, color: Colors.white),
          ),
          SizedBox(width: 16),
          GestureDetector(
            onTap: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            child: Icon(Icons.search, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
  final List<String> searchTerms = [
    'flower',
    'flower jisso',
    'flower dance',
    'flower dance piano',
    'flower day',
    'flower karaoke',
    'flowers aespa',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty ? searchTerms : searchTerms.where((term) => term.startsWith(query)).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          tileColor: Colors.white,
          leading: Icon(Icons.search, color: Colors.black),
          title: Text(
            suggestion,
            style: TextStyle(color: Colors.black),
          ),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}
