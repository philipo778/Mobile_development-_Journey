import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My profile"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage('assets/images/image.jpg'),
                  ),
                  const SizedBox(width: 12),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Philipo john",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Software developer",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      TextButton(
                        onPressed: (){},
                        child: Icon(
                          Icons.edit,
                          color: Colors.green[600],
                        ),

                      ),
                      SizedBox(height: 2),
                      const Text(
                        "Edit",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),
              const Text("Statistics",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      _counts("24"),
                      SizedBox(height: 16,),
                      _buildFilterPill("Posts"),
                    ],
                  ),
                  Column(
                    children: [
                      _counts("1289"),
                      SizedBox(height: 16,),
                      _buildFilterPill("Followers"),
                    ],
                  ),
                  Column(
                    children: [
                      _counts("2421"),
                      SizedBox(height: 16,),
                      _buildFilterPill("Following"),
                    ],
                  )
                ],
              ),
              Container(
                width: 300,
                height: 300,
                child: Center(
                  child: Text("Passionate about technology and software development."),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFilterPill(String label) {
    return Column(
      children: [
      Container(
      width: 84,
      height: 32,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[300],
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    )
      ],
    );

  }
  Widget _counts(String count){
    return Text(count);
  }
}