import 'package:flutter/material.dart';

class StackDay8 extends StatelessWidget {
  const StackDay8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack day8"),
        centerTitle: true,
        backgroundColor: Color(0xffBD1B1B),
      ),
      body: Column(
        children: [
          Stack(
            alignment: AlignmentGeometry.center,
            children: [
              Container(width: 400, height: 400, color: Color(0xff326792)),
              Container(width: 300, height: 300, color: Color(0xffdad9d6)),
              Container(
                width: 200,
                height: 200,
                color: Color.fromARGB(255, 202, 129, 129),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Text(
                  "Di atas kotak",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Stack(
            alignment: AlignmentGeometry.center,
            children: [
              Container(width: 400, height: 400, color: Color(0xff326792)),
              Container(width: 300, height: 300, color: Color(0xffdad9d6)),
              Container(
                width: 200,
                height: 200,
                color: Color.fromARGB(255, 202, 129, 129),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Text(
                  "Di atas kotak",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
