import 'package:flutter/material.dart';
import 'package:musik/src/ui/widgets/rotating-disc.dart';
import 'package:provider/provider.dart';
import 'package:musik/src/state/player_state.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlayerState>(builder: (context, playerState, child) {
      if (!playerState.isOpen) {
        return Container(
            decoration: BoxDecoration(
              color: Colors.black,
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 2), // Horizontal and Vertical offset
                ),
              ],
            ),
            child: Stack(children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [RotatingDisc()])
              ])
            ]));
      }

      return Container(
          decoration: BoxDecoration(
            color: Colors.black,
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 2), // Horizontal and Vertical offset
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0.0,
                top: -5.0,
                child: IconButton(
                  icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
                  onPressed: () {
                    context.read<PlayerState>().toggleOpen(false); // Ẩn MusicPlayer
                  },
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                      child: Consumer<PlayerState>(
                        builder: (context, playerState, child) {
                          final current = playerState.currentPosition.inSeconds.toDouble();
                          final total = playerState.duration.inSeconds.toDouble();
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(
                                  _formatDuration(playerState.currentPosition),
                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                ),
                              ),
                              Expanded(
                                child: Slider(
                                  value: current,
                                  max: total > 0 ? total : 1,
                                  onChanged: (value) async {
                                    await playerState.seek(Duration(seconds: value.toInt()));
                                  },
                                  inactiveColor: Colors.grey,
                                  activeColor: Colors.red,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(
                                  _formatDuration(playerState.duration),
                                  style: TextStyle(color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ],
                          );
                        },
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.shuffle, color: Colors.white),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.skip_previous, color: Colors.white),
                        onPressed: () {},
                      ),
                      Consumer<PlayerState>(
                        builder: (context, playerState, child) {
                          return IconButton(
                            icon: Icon(
                              playerState.isPlaying ? Icons.pause_circle_filled : Icons.play_circle_filled,
                              color: Colors.white,
                              size: 40,
                            ),
                            onPressed: () {
                              if (playerState.isPlaying || (playerState.currentUrl?.isEmpty ?? true)) {
                                playerState.pause();
                              } else {
                                playerState.play(playerState.currentUrl ?? '');
                              }
                            },
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.skip_next, color: Colors.white),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.repeat, color: Colors.white),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Spacing from the bottom
                ],
              ),
            ],
          ));
    });
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }
}
