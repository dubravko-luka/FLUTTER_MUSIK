import 'package:flutter/material.dart';
import 'package:musik/src/data/music_data.dart';
import 'package:musik/src/models/music_model.dart';
import 'package:musik/src/ui/widgets/music-item.dart';
import 'package:file_picker/file_picker.dart';
import 'package:musik/src/ui/widgets/header.dart';

class Upload extends StatelessWidget {
  const Upload({super.key});

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      PlatformFile file = result.files.first;
      print('Picked file: ${file.name}');
    } else {
      //
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HeaderWidget(),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: musicData.length,
        itemBuilder: (context, index) {
          final Music music = musicData[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: MusicItem(music: music),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _pickFile,
        child: Icon(Icons.add),
      ),
    );
  }
}
