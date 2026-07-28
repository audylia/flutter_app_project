import 'dart:nativewrappers/_internal/vm/lib/developer.dart';

import 'package:flutter/material.dart';

class CounterDay10 extends StatefulWidget {
  const CounterDay10({super.key});

  @override
  State<CounterDay10> createState() => _CounterDay10State();
}

class _CounterDay10State extends State<CounterDay10> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("Baca disini gak ya?");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Day 10"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(counter.toString(), style: TextStyle(fontSize: 100)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              ElevatedButton(
                onPressed: () {
                  log(counter.toString());
                  counter--;
                },
                child: Text("Kurang"),
              ),
              ElevatedButton(
                onPressed: () {
                  counter = 0;
                  setState(() {});
                },
                child: Text("Back To Zero"),
              ),
              ElevatedButton(
                onPressed: () {
                  log(counter.toString());
                  setState(() {});
                  counter++;
                },
                child: Text("Tambah"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
