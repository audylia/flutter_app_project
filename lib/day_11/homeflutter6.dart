import 'package:flutter/material.dart';

class HomeFlutter6 extends StatefulWidget {
  const HomeFlutter6({super.key});

  @override
  State<HomeFlutter6> createState() => _HomeFlutter6State();
}

class _HomeFlutter6State extends State<HomeFlutter6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Flutter 6",
          style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w600),
        ),
        backgroundColor: Color(0xFF7743DB),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check_circle_rounded, color: Colors.green, size: 100),

              SizedBox(height: 24),

              Text(
                "Login Berhasil!",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),

              SizedBox(height: 12),

              Text(
                "Ini adalah bagian dari Home Flutter 6!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),

              SizedBox(height: 36),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF7743DB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Kembali ke Login",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
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
