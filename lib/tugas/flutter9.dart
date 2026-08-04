import 'package:flutter/material.dart';
import 'package:flutter_app_project/tugas/model/pakaian_wanita_model.dart';

class Flutter9 extends StatelessWidget {
  Flutter9({super.key});

  final List<PakaianWanitaModel> dataPakaian = [
    PakaianWanitaModel(
      nama: "Dress",
      gambar: "assets/images/dress.jpg",
      deskripsi: "Dress wanita dengan desain elegan dan nyaman digunakan.",
    ),
    PakaianWanitaModel(
      nama: "Rok",
      gambar: "assets/images/rok.jpg",
      deskripsi: "Rok wanita dengan model modern untuk berbagai acara.",
    ),
    PakaianWanitaModel(
      nama: "Celana",
      gambar: "assets/images/celana.jpg",
      deskripsi: "Celana wanita berbahan nyaman untuk aktivitas sehari-hari.",
    ),
    PakaianWanitaModel(
      nama: "Cardigan",
      gambar: "assets/images/cardigan.jpg",
      deskripsi: "Cardigan hangat yang cocok dipadukan dengan berbagai outfit.",
    ),
    PakaianWanitaModel(
      nama: "Sweater",
      gambar: "assets/images/sweater.jpg",
      deskripsi: "Sweater rajut dengan bahan lembut dan nyaman dipakai.",
    ),
    PakaianWanitaModel(
      nama: "Tank Top",
      gambar: "assets/images/tank_top.jpg",
      deskripsi: "Tank top kasual dengan bahan adem dan ringan.",
    ),
    PakaianWanitaModel(
      nama: "Rompi",
      gambar: "assets/images/rompi.jpg",
      deskripsi: "Rompi wanita yang stylish dan cocok untuk berbagai gaya.",
    ),
    PakaianWanitaModel(
      nama: "Kerudung",
      gambar: "assets/images/kerudung.jpg",
      deskripsi: "Kerudung dengan bahan lembut dan nyaman digunakan.",
    ),
    PakaianWanitaModel(
      nama: "Kaos",
      gambar: "assets/images/kaos.jpg",
      deskripsi: "Kaos wanita simpel dan nyaman untuk sehari-hari.",
    ),
    PakaianWanitaModel(
      nama: "Kaos Kaki",
      gambar: "assets/images/kaos_kaki.jpg",
      deskripsi: "Kaos kaki wanita dengan bahan lembut dan elastis.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter 9"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: dataPakaian.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            elevation: 3,
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  dataPakaian[index].gambar,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                dataPakaian[index].nama,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  dataPakaian[index].deskripsi,
                ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}