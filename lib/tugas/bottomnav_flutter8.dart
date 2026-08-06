import 'package:flutter/material.dart';
import 'package:flutter_app_project/extension/navigator.dart';
import 'package:flutter_app_project/tugas/about_flutter8.dart';
import 'package:flutter_app_project/tugas/drawer_flutter7.dart';
import 'package:flutter_app_project/tugas/login_day_flutter11.dart';
import 'package:flutter_app_project/tugas/service/preference_handler_flutter11.dart';

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

  final List<Widget> _widgetOptions = [const DrawerFlutter7(), const AboutFlutter8(), const LogoutScreen()];

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
BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: "Home",
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.info),
    label: "About",
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.logout),
    label: "Logout",
  ),
        ],
      ),
      body: _widgetOptions.elementAt(_selectedBottom),
    );
  }
}

class LogoutScreen extends StatelessWidget {
  const LogoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // 1. Menghapus session status login di SharedPreferences lokal.
        PreferenceHandler.logOut();

        // 2. Mengarahkan pengguna kembali ke halaman LoginDay17 serta menghapus seluruh tumpukan navigasi sebelumnya (pushAndRemoveAll).
        context.pushAndRemoveAll(const LoginFlutter11());
      },
      child: const Center(
        child: Icon(Icons.logout, size: 48),
      ),
    );
  }
}
