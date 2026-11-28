import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack widget"),
      ),
      body: Center(
      child: Padding(
          padding: EdgeInsets.all(16),
        child: Stack(
          children: [
            const CircleAvatar(
              radius: 70,
                backgroundColor: Colors.green,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 50,
              ),
            ),
            Positioned(
              right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(3),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                  ),
                child: CircleAvatar(
              backgroundColor: Colors.blue,
                  radius: 18,
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
            )
                )
                )
          ],
        )
    )
      )
    );
  }
}
