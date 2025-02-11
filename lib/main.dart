import 'package:flutter/material.dart';
import 'package:musik/src/ui/screens/main.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Musik',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const MainScreen(),
    );
  }
}
