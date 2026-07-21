import 'package:flutter/material.dart';

class AppProject extends StatelessWidget {
  const AppProject({super.key});

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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // MainAxisSize: MainAxisSize.max,
        spacing: 12,
        children: [Text("Hello Batch 7"), Text("Hello Batch 7")],
      ),
    );
  }
}
