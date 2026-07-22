import 'package:flutter/material.dart';

class ImageContainerDay6 extends StatelessWidget {
  const ImageContainerDay6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Container day 6"),
        backgroundColor: const Color.fromARGB(255, 219, 203, 143),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/My_Luv_Hirono.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
