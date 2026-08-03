import 'package:flutter/material.dart';
import 'package:flutter_app_project/tugas/display_mode.dart';
import 'package:flutter_app_project/tugas/pick_day.dart';
import 'package:flutter_app_project/tugas/product_category.dart';
import 'package:flutter_app_project/tugas/set_reminder.dart';
import 'package:flutter_app_project/tugas/terms_condition.dart';

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

  final List<Widget> _widgetOptions = [
    const TermsCondition(),
    const DisplayMode(),
    const ProductCategory(),
    const PickDay(),
    const SetReminder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          changeBottom(value);
        },
        currentIndex: _selectedBottom,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: "Terms",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dark_mode),
            label: "Display",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Pick Day",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: "Reminder",
          ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedBottom),
    );
  }
}