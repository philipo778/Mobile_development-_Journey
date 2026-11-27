import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  ListWidget({super.key});

  final avatarUrl = [
    'https://i.pravatar.cc/150?img=11',
    'https://i.pravatar.cc/150?img=12',
    'https://i.pravatar.cc/150?img=13',
    'https://i.pravatar.cc/150?img=14',
    'https://i.pravatar.cc/150?img=15',
  ];
  List _dataList = [
  {
  'title': '3d making project',
  'subtitle': 'Team project working on figma',
  },
  {
  'title': 'Illustration',
  'subtitle': 'Team project working on figma',
  },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              const Text(
                'All Tasks',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(6),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  child: Text(
                    'View all',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _dataList.length,
          itemBuilder: (context, index) {
            final item = _dataList[index];
            return ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),


              title: Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item['title'] ?? ''),
                      Text(item['subtitle'] ?? ''),
                SizedBox(height: 20),

                Container(
                  // padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (final url in avatarUrl)
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.grey[200],
                            backgroundImage: NetworkImage(url),
                          ),
                        ),
                      const SizedBox(height: 0),
                      const Text("10 participants",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                        ),
                      )
                    ],
                      )
                )
                    ]
                  ),
                ],
              )
              // subtitle:
            );
          },
        ),
      ],
    );
  }
}