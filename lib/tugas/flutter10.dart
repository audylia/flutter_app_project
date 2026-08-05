import 'package:flutter/material.dart';

class Flutter10 extends StatefulWidget {
  const Flutter10({super.key});

  @override
  State<Flutter10> createState() => _Flutter10State();
}

class _Flutter10State extends State<Flutter10> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController hpController = TextEditingController();
  final TextEditingController sekolahController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            TextField(controller: namaController),
            TextFormField(
              controller: emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Email tidak boleh kosong";
                } else if (value.contains('@')) {
                  return "Email tidak valid";
                }
                return null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
