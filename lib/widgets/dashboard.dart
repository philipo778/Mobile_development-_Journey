import 'package:flutter/material.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Good Morning"),
              Text("Philip")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.notifications),
              SizedBox(width: 8,),
              CircleAvatar(
                child: Icon(Icons.person,
                color: Colors.white,),
                backgroundColor: Colors.blue,
              )
            ],
          )

        ],
      ),
          Text("My skills",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),
          ),
          Wrap(
            spacing: 8,
            runSpacing: 2,
            children: [
              Chip(label: Text('Flutter',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
                backgroundColor: Colors.blue,
              ),
              Chip(label: Text('Java', style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue,),
              Chip(label: Text('Dart', style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue,),
              Chip(label: Text('UI Design', style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue,),
              Chip(label: Text('Firebase', style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue,),
              Chip(label: Text('UI/UX Design', style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue,),
              Chip(label: Text('Rest API', style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue,),
              Chip(label: Text('Git & Github', style: TextStyle(color: Colors.white),), backgroundColor: Colors.blue,),
            ],
          ),
        ],
      )
    )
    );
  }
}
