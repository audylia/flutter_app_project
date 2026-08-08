import 'package:flutter/material.dart';
import 'package:flutter_app_project/day_18/database/db_helper_flutter12.dart';
import 'package:flutter_app_project/day_18/models/user_login_model_flutter12.dart';
import 'package:flutter_app_project/extension/navigator.dart';
import 'package:flutter_app_project/tugas/bottomnav_flutter8.dart';

class LoginFlutter12 extends StatefulWidget {
  const LoginFlutter12({super.key});

  @override
  State<LoginFlutter12> createState() => _LoginFlutter12State();
}

class _LoginFlutter12State extends State<LoginFlutter12> {
  final TextEditingController namaC = TextEditingController();
  final TextEditingController emailC = TextEditingController();
  final TextEditingController noHpC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();
  final TextEditingController sekolahC = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool isPasswordVisible = false;

  Future<void> login() async {
    final email = emailC.text.trim();
    final password = passwordC.text;

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Isi email dan password!'),
        ),
      );

      return;
    }

    final pengguna = await DBHelper().loginUser(
      email,
      password,
    );

    if (!mounted) return;

    if (pengguna != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Login berhasil'),
        ),
      );

      context.pushAndRemoveAll(
        BottomNavFlutter8(),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Login gagal! Email atau password salah.',
          ),
        ),
      );
    }
  }

  Future<void> register() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final pengguna = UserModelSQL(
      nama: namaC.text.trim(),
      email: emailC.text.trim(),
      noHp: noHpC.text.trim(),
      password: passwordC.text,
      sekolah: sekolahC.text.trim(),
    );

    final berhasil = await DBHelper().registerUser(
      pengguna,
    );

    if (!mounted) return;

    if (berhasil) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Register berhasil! Silakan login.',
          ),
        ),
      );

      passwordC.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Register gagal! Email mungkin sudah terdaftar.',
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    namaC.dispose();
    emailC.dispose();
    noHpC.dispose();
    passwordC.dispose();
    sekolahC.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFFBD1B1B);
    const fieldColor = Color(0xFFE4BEB9);
    const textColor = Color(0xFF493B39);

    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 16,
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/IconStudySprint (1).png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(height: 18),

                Text(
                  'Study Sprint',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  'One sprint. One step. One goal.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 17,
                  ),
                ),

                SizedBox(height: 38),

                Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(
                    28,
                    24,
                    28,
                    28,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: fieldColor,
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 14,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 8),

                      TextFormField(
                        controller: namaC,
                        validator: (value) {
                          if (value == null ||
                              value.trim().isEmpty) {
                            return 'Nama tidak boleh kosong';
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Nama lengkap',
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: textColor,
                          ),
                          filled: true,
                          fillColor: fieldColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      SizedBox(height: 16),

                      Text(
                        'Email',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 8),

                      TextFormField(
                        controller: emailC,
                        keyboardType:
                            TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null ||
                              value.trim().isEmpty) {
                            return 'Email tidak boleh kosong';
                          }

                          if (!value.contains('@')) {
                            return 'Email tidak valid';
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'name@gmail.com',
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: textColor,
                          ),
                          filled: true,
                          fillColor: fieldColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      SizedBox(height: 16),

                      Text(
                        'Nomor HP',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 8),

                      TextFormField(
                        controller: noHpC,
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value == null ||
                              value.trim().isEmpty) {
                            return 'Nomor HP tidak boleh kosong';
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: '08xxxxxxxxxx',
                          prefixIcon: Icon(
                            Icons.phone_outlined,
                            color: textColor,
                          ),
                          filled: true,
                          fillColor: fieldColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      SizedBox(height: 16),

                      Text(
                        'Password',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 8),

                      TextFormField(
                        controller: passwordC,
                        obscureText: !isPasswordVisible,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty) {
                            return 'Password tidak boleh kosong';
                          }

                          if (value.length < 8) {
                            return 'Password minimal 8 karakter';
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: textColor,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isPasswordVisible =
                                    !isPasswordVisible;
                              });
                            },
                            icon: Icon(
                              isPasswordVisible
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: textColor,
                            ),
                          ),
                          filled: true,
                          fillColor: fieldColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      SizedBox(height: 16),

                      Text(
                        'Asal Sekolah/Kampus',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 8),

                      TextFormField(
                        controller: sekolahC,
                        validator: (value) {
                          if (value == null ||
                              value.trim().isEmpty) {
                            return 'Asal sekolah/kampus tidak boleh kosong';
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: 'Nama sekolah/kampus',
                          prefixIcon: Icon(
                            Icons.school_outlined,
                            color: textColor,
                          ),
                          filled: true,
                          fillColor: fieldColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      SizedBox(height: 24),

                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: login,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.center,
                            children: [
                              Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 9),
                              Icon(
                                Icons.arrow_forward,
                                size: 23,
                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 14),

                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: register,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}