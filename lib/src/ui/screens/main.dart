import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:musik/src/ui/screens/album.dart';
import 'package:musik/src/ui/screens/favourite.dart';
import 'package:musik/src/ui/screens/home.dart';
import 'package:musik/src/ui/screens/profile.dart';
import 'package:musik/src/ui/screens/upload.dart';
import 'package:musik/src/ui/widgets/music_player.dart';
import 'package:musik/src/state/player_state.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Home(),
    Favourite(),
    AlbumScreen(),
    Upload(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Consumer<PlayerState>(builder: (context, playerState, child) {
            final bottom = playerState.isOpen ? 170.0 : 70.0;
            return Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, bottom), child: _pages[_selectedIndex]);
          }),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Consumer<PlayerState>(builder: (context, playerState, child) {
                  return SizedBox(
                    height: playerState.isOpen ? 160 : 70,
                    child: MusicPlayer(),
                  );
                })
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.album),
            label: 'AlbumScreen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_upload),
            label: 'Upload',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}
