import 'package:flutter/material.dart';

class Flutter1 extends StatelessWidget {
  const Flutter1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffBD1B1B),
        title: const Text("Profil Saya"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Audylia Aska Widiaputri",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.location_on), Text("Jakarta")],
            ),

            Text(
              "Seorang peserta pelatihan yang sedang mendalami Flutter di PPKD.",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
