import 'dart:convert';

class PakaianWanitaModel {
  final String nama;
  final String gambar;
  final String deskripsi;

  PakaianWanitaModel({
    required this.nama,
    required this.gambar,
    required this.deskripsi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nama': nama,
      'gambar': gambar,
      'deskripsi': deskripsi,
    };
  }

  factory PakaianWanitaModel.fromMap(Map<String, dynamic> map) {
    return PakaianWanitaModel(
      nama: map['nama'] as String,
      gambar: map['gambar'] as String,
      deskripsi: map['deskripsi'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PakaianWanitaModel.fromJson(String source) =>
      PakaianWanitaModel.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );
}