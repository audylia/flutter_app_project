import 'package:flutter/material.dart';
import 'package:flutter_app_project/tugas/service/preference_handler_flutter11.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_app_project/tugas/flutter10.dart';
import 'package:flutter_app_project/tugas/homeflutter10.dart';

class SplashScreenFlutter11 extends StatefulWidget {
  const SplashScreenFlutter11({super.key});

  @override
  State<SplashScreenFlutter11> createState() =>
      _SplashScreenFlutter11State();
}

class _SplashScreenFlutter11State extends State<SplashScreenFlutter11> {
  @override
  void initState() {
    super.initState();
    goToLogin();
  }

  void goToLogin() async {
    await Future.delayed(const Duration(seconds: 3));

    if (PreferenceHandler.isLogin == true) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Homeflutter10(nama: '', email: '', hp: '', sekolah: '',),
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Flutter10(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          "assets/animation/error.json",
        ),
      ),
    );
  }
}