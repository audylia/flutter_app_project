import 'package:flutter/material.dart';

class PickDay extends StatefulWidget {
 const PickDay({super.key});

  @override
  State<PickDay> createState() => _PickDayState();
}

class _PickDayState extends State<PickDay> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              final DateTime? picked = await showDatePicker(
                context: context,
                firstDate: DateTime(2020),
                lastDate: DateTime(2030),
                initialDate: DateTime.now(),
              );

              if (picked != null) {
                _selectedDate = picked;
                setState(() {});
              }
            },
            child: Text("Pilih Tanggal"),
          ),

         SizedBox(height: 20),

          Text(
            _selectedDate == null
                ? "Belum memilih tanggal"
                : "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}