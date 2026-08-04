import 'dart:convert';

class BuahModel {
  final String nama;
  final String harga;
  final String asal;
  BuahModel({required this.nama, required this.harga, required this.asal});

  Map<String, dynamic> toMap() {
    return {'nama': nama, 'harga': harga, 'asal': asal};
  }

  factory BuahModel.fromMap(Map<String, dynamic> map) {
    return BuahModel(
      nama: map['nama'] ?? '',
      harga: map['harga'] ?? '',
      asal: map['asal'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory BuahModel.fromJson(String source) =>
      BuahModel.fromMap(json.decode(source));
}
