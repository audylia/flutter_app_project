import 'package:flutter/material.dart';

class Level2flutter9 extends StatelessWidget {
  Level2flutter9({super.key});

  List<Map<String, dynamic>> dataPakaian = [
    {"nama": "Dress", "warna": "Merah", "ukuran": "M"},
    {"nama": "Rok", "warna": "Hitam", "ukuran": "L"},
    {"nama": "Celana Jeans", "warna": "Biru", "ukuran": "M"},
    {"nama": "Cardigan", "warna": "Cream", "ukuran": "L"},
    {"nama": "Sweater", "warna": "Abu-abu", "ukuran": "XL"},
    {"nama": "Tank Top", "warna": "Putih", "ukuran": "S"},
    {"nama": "Rompi", "warna": "Coklat", "ukuran": "M"},
    {"nama": "Kerudung", "warna": "Navy", "ukuran": "All Size"},
    {"nama": "Kaos", "warna": "Pink", "ukuran": "L"},
    {"nama": "Kaos Kaki", "warna": "Putih", "ukuran": "All Size"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dataPakaian.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            tileColor: index % 2 == 0 ? Colors.blueGrey : Colors.grey[200],
            title: Text(dataPakaian[index]["nama"]),
            subtitle: Text(dataPakaian[index]["warna"]),
            trailing: Text(dataPakaian[index]["ukuran"]),
          );
        },
      ),
    );
  }
}
