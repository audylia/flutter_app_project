import 'package:flutter/material.dart';

class Level1flutter9 extends StatelessWidget {
  Level1flutter9({super.key});

  List<String> namaPakaian = [
    "Dress",
    "Rok",
    "Celana Jeans",
    "Cardigan",
    "Sweater",
    "Tank Top",
    "Rompi",
    "Kerudung",
    "Kaos",
    "Kaos Kaki",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: namaPakaian.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(namaPakaian[index]);
        },
      ),
    );
  }
}
