import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputWidgetDay13 extends StatefulWidget {
  const InputWidgetDay13({super.key});

  @override
  State<InputWidgetDay13> createState() => _InputWidgetDay13State();
}

class _InputWidgetDay13State extends State<InputWidgetDay13> {
  bool _isCheck = false;
  bool _isOn = false;
  String? _selected;
  DateTime? _selectedTime;
  TimeOfDay? _selectedTimeOfDay;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: _isOn ? Colors.white : Colors.black,
      child: Column(
        children: [
          //CheckBox
          checkboxWidget(),
          //Switch
          switchWidget(),
          //DropdownButton
          dropdownButton(),
          //Date Picker
          datePickerWidget(context),
          //Time Picker
          ElevatedButton(
            onPressed: () async {
              final TimeOfDay? picked = await showTimePicker(
                context: context,
                // firstDate: DateTime(2021),
                // lastDate: DateTime.now(),
                initialTime: TimeOfDay.now(),
              );
              if (picked != null) {
                setState(() {
                  _selectedTimeOfDay = picked;
                });
              }
            },
            child: Text("Pilih Jam"),
          ),
          Text(
            _selectedTime == null
                ? "Anda belum pilih Jam"
                : _selectedTimeOfDay.toString(),
          ),
          Text(
            _selectedTimeOfDay == null
                ? "Anda belum pilih jam"
                : DateFormat('HH:mm').format(
                    DateTime(
                      0,
                      0,
                      0,
                      _selectedTimeOfDay!.hour,
                      _selectedTimeOfDay!.minute,
                    ),
                  ),
          ),
          Text(
            _selectedTimeOfDay == null
                ? "Anda belum pilih jam"
                : DateFormat('HH:mm a').format(
                    DateTime(
                      0,
                      0,
                      0,
                      _selectedTimeOfDay!.hour,
                      _selectedTimeOfDay!.minute,
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Column datePickerWidget(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            final DateTime? picked = await showDatePicker(
              context: context,
              firstDate: DateTime(2021),
              lastDate: DateTime.now(),
              initialDate: DateTime.now(),
            );
            if (picked != null) {
              setState(() {
                _selectedTime = picked;
              });
            }
          },
          child: Text("Pilih Tanggal"),
        ),
        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : DateFormat(
                  'EEE, dd MMM yyyy',
                ).format(_selectedTime ?? DateTime.now()),
        ),
        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : DateFormat(
                  'EEE, dd MMM yyyy',
                ).format(_selectedTime ?? DateTime.now()),
        ),
        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : DateFormat(
                  'EEE, dd MMM yyyy',
                ).format(_selectedTime ?? DateTime.now()),
        ),
        Text(
          _selectedTime == null
              ? "Anda belum pilih tanggal"
              : DateFormat(
                  'EEE, dd MMM yyyy',
                ).format(_selectedTime ?? DateTime.now()),
        ),
      ],
    );
  }

  Column switchWidget() {
    return Column(
      children: [
        Switch(
          activeThumbColor: Colors.pink,
          inactiveThumbColor: Colors.red,
          value: _isOn,
          onChanged: (value) {
            _isOn = value ?? false;
            setState(() {});
          },
        ),
        Text(_isOn ? "Mati" : "Hidup"),
      ],
    );
  }

  Column dropdownButton() {
    return Column(
      children: [
        DropdownButton(
          value: _selected,
          items: ["Merah", "Kuning", "Hijau"].map((String val) {
            return DropdownMenuItem(value: val, child: Text(val));
          }).toList(),
          onChanged: (value) {
            setState(() {
              _selected = value;
            });
          },
        ),
        Text(_selected.toString()),
        Container(
          height: 50,
          width: 50,
          color: _selected == "Merah"
              ? Colors.red
              : _selected == "Kuning"
              ? Colors.yellow
              : _selected == "Hijau"
              ? Colors.green
              : Colors.white,
        ),
      ],
    );
  }

  Column checkboxWidget() {
    return Column(
      children: [
        Checkbox(
          value: _isCheck,
          onChanged: (value) {
            _isCheck = value ?? false;
            setState(() {});
          },
        ),
        Text(_isCheck ? "Sudah di ceklist" : "Belum di ceklist"),
      ],
    );
  }
}
