import 'package:flutter/material.dart';

class TermsCondition extends StatefulWidget {
 const TermsCondition({super.key});

  @override
  State<TermsCondition> createState() => _TermsConditionState();
}

class _TermsConditionState extends State<TermsCondition> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
            value: _isChecked,
            onChanged: (value) {
              _isChecked = value ?? false;
              setState(() {});
            },
          ),

          Text(
            _isChecked
                ? "Saya menyetujui persyaratan"
                : "Saya belum menyetujui persyaratan",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}