import 'package:flutter/material.dart';
import 'package:flutter_app_project/tugas/about_flutter8.dart';
import 'package:flutter_app_project/tugas/drawer_flutter7.dart';

class BottomNavFlutter8 extends StatefulWidget {
  const BottomNavFlutter8({super.key});

  @override
  State<BottomNavFlutter8> createState() => _BottomNavFlutter8State();
}

class _BottomNavFlutter8State extends State<BottomNavFlutter8> {
  int _selectedBottom = 0;

  void changeBottom(int index) {
    _selectedBottom = index;
    print("Ini adalah value dari $_selectedBottom");
    setState(() {});
  }

  final List<Widget> _widgetOptions = [DrawerFlutter7(), AboutFlutter8()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          changeBottom(value);
        },
        currentIndex: _selectedBottom,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "List"),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedBottom),
    );
  }
}
