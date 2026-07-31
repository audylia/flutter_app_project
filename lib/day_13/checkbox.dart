import 'package:flutter/material.dart';

class InputWidgetDay13 extends StatefulWidget {
  const InputWidgetDay13({super.key});

  @override
  State<InputWidgetDay13> createState() => _CheckBoxDay13State();
}

class _CheckBoxDay13State extends State<InputWidgetDay13> {
  bool _isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Checkbox(
          value: _isCheck,
          onChanged: (value) {
            _isCheck = value ?? false;
          },
        ),
        Text(_isCheck ? "Sudah di ceklist" : "Belum di ceklist"),
      ],
    );
  }
}
