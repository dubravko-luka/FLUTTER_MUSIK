import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class PlayerState with ChangeNotifier {
  final AudioPlayer _audioPlayer = AudioPlayer();
  Duration _currentPosition = Duration.zero;
  bool isOpen = false;
  String? _currentUrl;

  bool get isPlaying => _audioPlayer.playing;
  bool get isOpenFlag => isOpen;
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

      // Tải xuống tệp
      final filePath = await _downloadFile(url);

      if (filePath != null) {
        // Phát từ tệp cục bộ
        await _audioPlayer.setAudioSource(AudioSource.file(filePath));
        _audioPlayer.play();
        isOpen = true;
        notifyListeners();
      }
    }
  }

  Future<String?> _downloadFile(String url) async {
    try {
      final directory = await getTemporaryDirectory();
      final filePath = '${directory.path}/temp_audio.mp3';
      await Dio().download(url, filePath);
      return filePath;
    } catch (e) {
      print("Error downloading file: $e");
      return null;
    }
  }

  void pause() {
    _audioPlayer.pause();
    notifyListeners();
  }

  void toggleOpen([bool? status]) {
    isOpen = status ?? !isOpen;
    notifyListeners();
  }

  Future<void> seek(Duration position) async {
    try {
      await _audioPlayer.seek(position);
    } catch (e) {
      print("Error in seek: $e");
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}
