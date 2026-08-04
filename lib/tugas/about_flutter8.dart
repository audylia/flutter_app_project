import 'package:flutter/material.dart';

class AboutFlutter8 extends StatelessWidget {
  const AboutFlutter8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About Aplication"), centerTitle: true),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/IconStudySprint (1).png",
                width: 130,
                height: 130,
              ),

              SizedBox(height: 18),

              Text(
                "Study Sprint",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 15),

              Text(
                "Aplikasi belajar yang membantu pengguna mengatur waktu belajar, "
                "mengelola materi, dan meningkatkan produktivitas belajar.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17),
              ),

              SizedBox(height: 30),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFBD1B1B),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dibuat oleh",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),

                        Text(
                          "Audylia Aska Widiaputri",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 15),

                    Divider(color: Colors.white, thickness: 1),

                    SizedBox(height: 15),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Versi",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),

                        Text(
                          "1.0.0",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
