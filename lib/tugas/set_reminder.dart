import 'package:flutter/material.dart';

class SetReminder extends StatefulWidget {
 const SetReminder({super.key});

  @override
  State<SetReminder> createState() => _SetReminderState();
}

class _SetReminderState extends State<SetReminder> {
  TimeOfDay? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              final TimeOfDay? picked = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );

              if (picked != null) {
                _selectedTime = picked;
                setState(() {});
              }
            },
            child: Text("Pilih Jam"),
          ),

         SizedBox(height: 20),

          Text(
            _selectedTime == null
                ? "Belum memilih jam"
                : "Pengingat diatur pukul: ${_selectedTime!.hour.toString().padLeft(2, '0')}:${_selectedTime!.minute.toString().padLeft(2, '0')}",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}