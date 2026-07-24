import 'package:flutter/material.dart';

class GridViewDay8 extends StatelessWidget {
  const GridViewDay8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView day 8"),
        backgroundColor: Color(0xffBD1B1B),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
        ),
        itemCount: 1000,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: const Color(0xff326792),
            child: Text("$index", style: TextStyle(fontSize: 30)),
          );
        },
      ),
      // GridView.count(
      //   crossAxisSpacing: 1,
      //   mainAxisSpacing: 2,
      //   crossAxisCount: 2,
      //   children: <Widget>[
      //     Container(color: const Color(0xff326792)),
      //     Container(color: const Color(0xffdad9d6)),
      //     Container(color: const Color(0xff000000)),
      //   ],
      // ),
    );
  }
}
