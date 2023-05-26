import 'package:flutter/material.dart';
import 'package:project_3/screen_home.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
      ),
      home: ScreenHome(),
    );
  }
}