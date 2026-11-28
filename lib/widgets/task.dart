import 'package:flutter/material.dart';

class UiWidgets extends StatelessWidget {
  const UiWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Learning Log')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                  child: Row(
                    children: [
                      const CircleAvatar(
                      child:  Icon(Icons.menu_book_sharp,
                      color: Colors.white,),
                        backgroundColor: Colors.blue,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Flutter Development Flutter Development Flutter Development Flutter Development Flutter Development',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis
                          ),
                          Text('Completed today\'s lesson'),
                        ],
                      ),
                      )
                    ],
                  ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Done',
                      style: TextStyle(color: Colors.green[800]),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Yesterday, 10:32:19'),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}