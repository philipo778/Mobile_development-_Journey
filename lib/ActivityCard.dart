import 'package:flutter/material.dart';

class Activitycard extends StatelessWidget {
  const Activitycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(12)
      ),
        child: const Text("Study Flutter")
    );
  }
}
