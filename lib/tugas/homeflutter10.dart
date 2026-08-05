import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Homeflutter10 extends StatelessWidget {
 const Homeflutter10({
    super.key,
    required this.nama,
    required this.email,
    required this.hp,
    required this.sekolah,
  });

  final String nama;
  final String email;
  final String hp;
  final String sekolah;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
  title: Text(
    "Study Sprint",
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  ),
  centerTitle: true,
  backgroundColor: Color(0xFFBD1B1B),
),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              "assets/animation/Correct_Animation.json",
              width: 180,
              height: 180,
            ),

           SizedBox(height: 20),

            Text(
              "Terima kasih,\n$nama dari $sekolah telah mendaftar.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

           SizedBox(height: 20),

            Text("Nama : $nama"),
            Text("Email : $email"),
            Text("No HP : ${hp.isEmpty ? '-' : hp}"),
            Text("School / University : $sekolah"),

           SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}