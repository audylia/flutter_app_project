import 'package:flutter/material.dart';

class Homeflutter6 extends StatelessWidget {
  const Homeflutter6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Routing Day 11"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Balik / Pop"),
            ),
          ),
        ],
      ),
    );
  }
}
