import 'package:flutter/material.dart';
import 'package:flutter_app_project/day_11/homeflutter6.dart';
import 'package:flutter_app_project/day_11/widgets/primary_button.dart';

class Flutter6 extends StatefulWidget {
  const Flutter6({super.key});

  @override
 State<Flutter6> createState() => _Flutter6State();
}

class _Flutter6State extends State<Flutter6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF9F5),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 24,
            right: 24,
            top: 55,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/Frame 4.jpg",
                  width: 76.07,
                  height: 77,
                  fit: BoxFit.contain,
                ),
              ),

              SizedBox(height: 55),

              Text(
                "Login",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF000000),
                  letterSpacing: 0.3,
                ),
              ),

              SizedBox(height: 10),

              Text(
                "Yuk masuk untuk bertransaksi",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                  letterSpacing: 0.3,
                ),
              ),

              SizedBox(height: 55),

              Text(
                "Email",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                  letterSpacing: 0.3,
                ),
              ),

              SizedBox(height: 8),

              TextField(
                decoration: InputDecoration(
                  hintText: "Masukan email anda",
                  hintStyle: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFB0B0B0),
                    letterSpacing: 0.3,
                  ),
                  contentPadding: EdgeInsets.all(10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Color(0xFFB0B0B0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Color(0xFFB0B0B0),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Text(
                "Password",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF000000),
                  letterSpacing: 0.3,
                ),
              ),

              SizedBox(height: 8),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Masukan password anda",
                  hintStyle: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFB0B0B0),
                    letterSpacing: 0.3,
                  ),
                  contentPadding: EdgeInsets.all(10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Color(0xFFB0B0B0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Color(0xFFB0B0B0),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Lupa Password",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF7743DB),
                    letterSpacing: 0.3,
                  ),
                ),
              ),

              SizedBox(height: 20),

              PrimaryButton(
                text: "Login",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HomeFlutter6(),
                    ),
                  );
                },
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sudah punya akun?",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF000000),
                      letterSpacing: 0.3,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF3E71FE),
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}