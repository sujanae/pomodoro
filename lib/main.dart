import 'package:flutter/material.dart';
import 'package:pomodoro/home_page.dart';
import 'package:pomodoro/shared_pref.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SharedDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
