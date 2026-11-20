
import 'package:flutter/material.dart';
import 'ActivityCard.dart';

class MyDiaryScreen extends StatelessWidget {
  const MyDiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Diary")),
      body: const Column(
        children: [
          Activitycard(),
          Activitycard(),
          Activitycard()
        ],
      ),
    );
  }
}