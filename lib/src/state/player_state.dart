import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PlayerState with ChangeNotifier {
  final AudioPlayer _audioPlayer = AudioPlayer();
  Duration _currentPosition = Duration.zero;
  bool _isOpen = false;
  String? _currentUrl;

  bool get isPlaying => _audioPlayer.playing;
  bool get isOpen => _isOpen;
  Duration get currentPosition => _currentPosition;
  Duration get duration => _audioPlayer.duration ?? Duration.zero;
  String? get currentUrl => _currentUrl;

  PlayerState() {
    _audioPlayer.positionStream.listen((position) {
      _currentPosition = position;
      notifyListeners();
    });
  }

  Future<void> play(String url) async {
    if (_currentUrl != url) {
      _currentUrl = url;
      await _audioPlayer.setUrl(url);
    }
    _audioPlayer.play();
    _isOpen = true;
    notifyListeners();
  }

  void pause() {
    _audioPlayer.pause();
    notifyListeners();
  }

  void toggleOpen([bool? status]) {
    _isOpen = status ?? !_isOpen;
    notifyListeners();
  }

  Future<void> seek(Duration position) async {
    await _audioPlayer.seek(position);
  }

  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}
