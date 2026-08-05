import 'package:flutter/material.dart';
import 'package:flutter_app_project/tugas/homeflutter10.dart';
import 'package:lottie/lottie.dart';

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

  final _formKey = GlobalKey<FormState>();

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
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 25),

              TextFormField(
                controller: namaController,
                decoration: InputDecoration(
                  labelText: "Full Name",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Nama lengkap wajib diisi";
                  }
                  return null;
                },
              ),

              SizedBox(height: 15),

              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email wajib diisi";
                  } else if (!value.contains("@")) {
                    return "Email harus mengandung @";
                  }
                  return null;
                },
              ),

              SizedBox(height: 15),

              TextFormField(
                controller: hpController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number (Optional)",
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 15),

              TextFormField(
                controller: sekolahController,
                decoration: InputDecoration(
                  labelText: "School / University",
                  prefixIcon: Icon(Icons.school),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "School / University wajib diisi";
                  }
                  return null;
                },
              ),

              SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFBD1B1B),
                  ),
                  onPressed: () {
                                        List<String> error = [];

                    if (namaController.text.isEmpty) {
                      error.add("Nama Lengkap");
                    }

                    if (emailController.text.isEmpty ||
                        !emailController.text.contains("@")) {
                      error.add("Email");
                    }

                    if (sekolahController.text.isEmpty) {
                      error.add("School / University");
                    }

                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Data Berhasil"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Lottie.asset(
                                "assets/animation/Correct_Animation.json",
                                width: 120,
                                height: 120,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Data berhasil divalidasi",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Kembali"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Homeflutter10(
                                      nama: namaController.text,
                                      email: emailController.text,
                                      hp: hpController.text,
                                      sekolah: sekolahController.text,
                                    ),
                                  ),
                                );
                              },
                              child: Text("Lanjut"),
                            ),
                          ],
                        ),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Data Belum Valid"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Lottie.asset(
                                "assets/animation/False_Animation.json",
                                width: 120,
                                height: 120,
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Silakan lengkapi data berikut:\n${error.join("\n")}",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Kembali"),
                            ),
                          ],
                        ),
                      );
                    }

                    },
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}