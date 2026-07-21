import 'package:flutter/material.dart';

class LayoutingDay5 extends StatelessWidget {
  const LayoutingDay5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffBD1B1B),

        title: const Text("Hello Batch 7"),
        centerTitle: true,
        actions: [Text("1"), Text("2")],
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        // MainAxisSize: MainAxisSize.max,
        spacing: 12,
        children: [
          Icon(Icons.star),
          Icon(Icons.star),
          Text("Hello Batch 7"),
          Text("Hello Batch 7"),
          Text("Hello Batch 7"),
          Icon(Icons.star),
          Text("Hello Batch 7"),
          Text("Di bawa ini Row"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.star), Text("Hello Batch 7")],
          ),
        ],
      ),
    );
  }
}
