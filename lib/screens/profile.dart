import 'package:flutter/material.dart';
import 'package:widgets/widgets/AppDesignWidget.dart';

import '../widgets/list_widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.all(16),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey,
            // backgroundImage: AssetImage("assets/images/image.jpg"),
            backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=52",),
          ),
        ),
        title: const Text("Home"),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
      child: Column(
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.chevron_left)
                  ),
                  SizedBox(width: 12,),
                  const Column(
                    children: [
                      Text("Monday, April 28",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                      ),

                      SizedBox(width: 10),
                      Text("This Week",
                        style: TextStyle(
                          fontWeight: FontWeight(800),
                          fontSize: 35,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 12),
                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.chevron_right)
                  )
                ],
            ),
          const SizedBox(height: 16),
          const Appdesignwidget(),
          SizedBox(height: 20),
          ListWidget(),
        ],
      ),
      )

    );
  }
}
