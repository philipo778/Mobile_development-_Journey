
import 'package:flutter/foundation.dart';
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
          ActivityCard(title: "Creating Widgets", description: "I am trying to learn how to interact with widgets using flutter", isCompleted: false, priority: "high",),
          ActivityCard(title: "Learnign Sqlite Database", description: "Working with offline mode need to know how to interact with SQLITE Database", isCompleted: true, priority: "low",),
          ActivityCard(title: "Learning error handling", description: "learn how to handle errors when occurs", isCompleted: true, priority: 'medium',)
        ],
      ),
    );
  }
}