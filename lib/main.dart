import 'package:flutter/material.dart';
import 'Screen1.dart';
import 'MyDiary.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDiaryScreen(),
    );
  }
}
