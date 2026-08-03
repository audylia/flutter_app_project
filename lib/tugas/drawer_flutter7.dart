import 'package:flutter/material.dart';
import 'package:flutter_app_project/extension/navigator.dart';
import 'package:flutter_app_project/tugas/display_mode.dart';
import 'package:flutter_app_project/tugas/pick_day.dart';
import 'package:flutter_app_project/tugas/product_category.dart';
import 'package:flutter_app_project/tugas/set_reminder.dart';
import 'package:flutter_app_project/tugas/terms_condition.dart';

class DrawerFlutter7 extends StatefulWidget {
 const DrawerFlutter7({super.key});

  @override
  State<DrawerFlutter7> createState() => _DrawerFlutter7State();
}

class _DrawerFlutter7State extends State<DrawerFlutter7> {
  int _selectedIndex = 0;

  void changeDrawer(int index) {
    _selectedIndex = index;
    setState(() {});
    context.pop();
  }

  final List<Widget> _widgetOptions = [
    TermsCondition(),
    DisplayMode(),
    ProductCategory(),
    PickDay(),
    SetReminder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Menu"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
           DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
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
              leading: Icon(Icons.check_box),
              title: Text("Terms & Condition"),
              onTap: () {
                changeDrawer(0);
              },
            ),

            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text("Display Mode"),
              onTap: () {
                changeDrawer(1);
              },
            ),

            ListTile(
              leading: Icon(Icons.category),
              title: Text("Product Category"),
              onTap: () {
                changeDrawer(2);
              },
            ),

            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text("Pick Day"),
              onTap: () {
                changeDrawer(3);
              },
            ),

            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Set Reminder"),
              onTap: () {
                changeDrawer(4);
              },
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}