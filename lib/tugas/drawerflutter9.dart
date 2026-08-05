import 'package:flutter/material.dart';
import 'package:flutter_app_project/extension/navigator.dart';
import 'package:flutter_app_project/tugas/level1flutter9.dart';
import 'package:flutter_app_project/tugas/level2flutter9.dart';
import 'package:flutter_app_project/tugas/level3flutter9.dart';

class DrawerFlutter9 extends StatefulWidget {
  const DrawerFlutter9({super.key});

  @override
  State<DrawerFlutter9> createState() => _DrawerFlutter9State();
}

class _DrawerFlutter9State extends State<DrawerFlutter9> {
  int _selectedIndex = 0;

  void changeDrawer(int index) {
    _selectedIndex = index;
    setState(() {});
    context.pop();
  }

  final List<Widget> _widgetOptions = [
    Level1flutter9(),
    Level2flutter9(),
    Level3flutter9(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Menu"), centerTitle: true),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.grey),
              child: Center(
                child: Text(
                  "Navigation Menu",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.filter_1),
              title: Text("Level 1"),
              onTap: () {
                changeDrawer(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.filter_2),
              title: Text("Level 2"),
              onTap: () {
                changeDrawer(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.filter_3),
              title: Text("Level 3"),
              onTap: () {
                changeDrawer(2);
              },
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
