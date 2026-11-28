import 'package:flutter/material.dart';
import 'package:widgets/screens/profile.dart';
import 'package:widgets/widgets/task.dart';
import  'screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UiWidgets(),



    );
  }
}
