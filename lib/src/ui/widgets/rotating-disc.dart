import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:musik/src/state/player_state.dart'; // Ensure this path is correct

class RotatingDisc extends StatefulWidget {
  const RotatingDisc({super.key});

  @override
  _RotatingDiscState createState() => _RotatingDiscState();
}

class _RotatingDiscState extends State<RotatingDisc> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PlayerState>(
      builder: (context, playerState, child) {
        if (!playerState.isPlaying) {
          _controller.stop();
        } else {
          _controller.repeat();
        }
        return Positioned(
          left: 16,
          bottom: 16,
          child: GestureDetector(
            onTap: () {
              playerState.toggleOpen(); // Toggle isOpen state
            },
            child: RotationTransition(
              turns: _controller,
              child: Icon(
                Icons.album,
                size: 60,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
