import 'package:flutter/material.dart';

class Flutter3 extends StatelessWidget {
  const Flutter3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Registrasi & Edukasi",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.red.shade700,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [SingleChildScrollView(scrollDirection: Axis.horizontal)],
        ),
      ),
    );
  }
}
