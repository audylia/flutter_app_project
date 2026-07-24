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
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              "From Regristasi",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "Nama Pengguna",
                fillColor: Colors
                    .red[100], // Menentukan warna latar belakang TextField (merah muda).
                filled:
                    true, // Wajib diset true agar properti fillColor dapat diterapkan.
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Email Pengguna",
                fillColor: Colors
                    .red[100], // Menentukan warna latar belakang TextField (merah muda).
                filled:
                    true, // Wajib diset true agar properti fillColor dapat diterapkan.
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                hintText: "Telephone Pengguna",
                fillColor: Colors
                    .red[100], // Menentukan warna latar belakang TextField (merah muda).
                filled:
                    true, // Wajib diset true agar properti fillColor dapat diterapkan.
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.key),
                hintText: "Input Password",
                fillColor: Colors
                    .red[100], // Menentukan warna latar belakang TextField (merah muda).
                filled:
                    true, // Wajib diset true agar properti fillColor dapat diterapkan.
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: "Email Pengguna",
                fillColor: Colors
                    .red[100], // Menentukan warna latar belakang TextField (merah muda).
                filled:
                    true, // Wajib diset true agar properti fillColor dapat diterapkan.
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
