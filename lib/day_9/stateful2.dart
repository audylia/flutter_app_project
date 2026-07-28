import 'package:flutter/material.dart';

class Stateful2Day9 extends StatefulWidget {
  const Stateful2Day9({super.key});

  @override
  State<Stateful2Day9> createState() => _Stateful2Day9State();
}

class _Stateful2Day9State extends State<Stateful2Day9> {
  int counter = 0;
  bool showImage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),

          ElevatedButton(
            onPressed: () {
              debugPrint('Notifikasi Debug Console');
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(const SnackBar(content: Text('Kotal disentuh')));
            },
            child: const Text("Klik Me"),
          ),

          IconButton(
            icon: Icon(Icons.access_alarms_rounded),
            onPressed: () {
              debugPrint("Ikon Klik");
            },
          ),

          TextButton(
            onPressed: () {
              debugPrint("Tombol Teks Ditekan");
            },
            child: Text("Baca Selengkapnya"),
          ),
          GestureDetector(
            onTap: () {
              debugPrint("Disentuh Sekali");
            },
            onDoubleTap: () {
              debugPrint("Disentuh Dua Kali");
            },
            onLongPress: () {
              debugPrint("Tahan Lama");
            },
            child: Container(
              color: Colors.blue,
              padding: EdgeInsets.all(8),
              child: Text("Tekan Saya"),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              debugPrint("FAB ditekan");
            },
            tooltip: "Tambah Data",
            child: Icon(Icons.add),
          ),
          InkWell(
            onTap: () {
              debugPrint("Gambar Diklik");
            },
            child: Text("Contoh"),
          ),

          SizedBox(height: 50),
          TextButton(
            onPressed: () {
              setState(() {
                showImage = !showImage;
              });
            },
            child: Text(showImage ? "Sembunyikan Gambar" : "Tampilkan Gambar"),
          ),
          if (showImage)
            Image.network(
              "https://picsum.photos//200",
              height: 120,
              width: 120,
            ),

          Text('Nilai $counter'),
          ElevatedButton(
            child: Text('CounterUp'),
            onPressed: () {
              setState(() {
                counter--;
              });
            },
          ),
        ],
      ),
    );
  }
}
