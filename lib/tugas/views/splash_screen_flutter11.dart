import 'package:flutter/material.dart';
import 'package:flutter_app_project/tugas/service/preference_handler_flutter11.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_app_project/tugas/flutter10.dart';
import 'package:flutter_app_project/tugas/homeflutter10.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToPage();
  }

  void goToPage() async {
    await Future.delayed(const Duration(seconds: 2));

    if (PreferenceHandler.isLogin) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Homeflutter10(
            nama: "",
            email: "",
            hp: "",
            sekolah: "",
          ),
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
          "assets/lottie/Correct Animation.json",
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}