import 'package:flutter/material.dart';

class SingleChildScrollViewDay8 extends StatelessWidget {
  const SingleChildScrollViewDay8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SingleChildScrollView"),
        centerTitle: true,
        backgroundColor: const Color(0xffBD1B1B),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    color: const Color(0xff326792),
                    width: 400,
                    height: 400,
                  ),
                  Container(
                    color: const Color(0xffdad9d6),
                    width: 300,
                    height: 300,
                  ),
                  Container(
                    color: const Color(0xff000000),
                    width: 200,
                    height: 200,
                  ),
                ],
              ),
            ),

            Container(color: const Color(0xff326792), width: 400, height: 400),
            Container(color: const Color(0xffdad9d6), width: 300, height: 300),
            Container(color: const Color(0xff000000), width: 200, height: 200),
          ],
        ),
      ),
    );
  }
}
