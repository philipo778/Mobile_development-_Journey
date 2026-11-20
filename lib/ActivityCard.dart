import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final String title;
  final String description;
  final bool isCompleted;
  final String priority;

  const ActivityCard({
    super.key,
    required this.title,
    required this.description,
    required this.isCompleted,
    required this.priority

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
              Text(
              priority
            ),
            Icon(
                isCompleted
                    ? Icons.check_circle
                    : Icons.pending_actions
            ),
          ]
        )


      ),
    );
  }
}
