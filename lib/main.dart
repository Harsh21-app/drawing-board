import 'package:drawing_board/screens/drawing_board_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drawing Board',
      theme: ThemeData(useMaterial3: true),
      home: const DrawingBoardScreen(),
    );
  }
}
