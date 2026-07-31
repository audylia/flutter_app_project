import 'package:flutter/material.dart';
import 'package:flutter_app_project/day_13/checkbox.dart';
import 'package:flutter_app_project/day_5/flutter1.dart';
import 'package:flutter_app_project/day_6/flutter2.dart';
import 'package:flutter_app_project/day_8/flutter3.dart';

class BottomNavDay13 extends StatefulWidget {
  const BottomNavDay13({super.key});

  @override
  State<BottomNavDay13> createState() => _BottomNavDay13State();
}

class _BottomNavDay13State extends State<BottomNavDay13> {
  int _selectedBottom = 0;

  void changeBottom(int index) {
    _selectedBottom = index;
    print("Ini adalah value dari $_selectedBottom");
    setState(() {});
  }

  final List<Widget> _widgetOptions = [
    Flutter3(),
    Flutter1(),
    Flutter2(),
    InputWidgetDay13(),
    // Center(child: Text("Home")),
    // Center(child: Text("School")),
    // Center(child: Text("Business")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          changeBottom(value);
        },
        currentIndex: _selectedBottom,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "School"),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: "Business",
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedBottom),
    );
  }
}
