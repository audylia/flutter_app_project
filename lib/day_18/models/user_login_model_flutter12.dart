import 'dart:convert';

class UserModelSQL {
  final int? id;
  final String nama;
  final String email;
  final String noHp;
  final String password;
  final String sekolah;

  UserModelSQL({
    this.id,
    required this.nama,
    required this.email,
    required this.noHp,
    required this.password,
    required this.sekolah,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nama': nama,
      'email': email,
      'no_hp': noHp,
      'password': password,
      'sekolah': sekolah,
    };
  }

  factory UserModelSQL.fromMap(Map<String, dynamic> map) {
    return UserModelSQL(
      id: map['id'] != null ? map['id'] as int : null,
      nama: map['nama'] as String,
      email: map['email'] as String,
      noHp: map['no_hp'] as String,
      password: map['password'] as String,
      sekolah: map['sekolah'] as String,
    );
  }

  String toJson() {
    return json.encode(toMap());
  }

  factory UserModelSQL.fromJson(String source) {
    return UserModelSQL.fromMap(
      json.decode(source) as Map<String, dynamic>,
    );
  }
}