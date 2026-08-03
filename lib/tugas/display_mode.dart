import 'package:flutter/material.dart';

class DisplayMode extends StatefulWidget {
  const DisplayMode({super.key});

  @override
  State<DisplayMode> createState() => _DisplayModeState();
}

class _DisplayModeState extends State<DisplayMode> {
  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: _isDark ? Colors.black : Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: _isDark,
              onChanged: (value) {
                _isDark = value;
                setState(() {});
              },
            ),

            Text(
              _isDark ? "Mode Gelap Aktif" : "Mode Terang Aktif",
              style: TextStyle(
                fontSize: 18,
                color: _isDark ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}