import 'package:flutter/material.dart';
import 'package:flutter_app_project/day_18/database/db_helper_flutter12.dart';
import 'package:flutter_app_project/day_18/models/user_login_model_flutter12.dart';

class DataUserFlutter12 extends StatefulWidget {
  const DataUserFlutter12({super.key});

  @override
  State<DataUserFlutter12> createState() =>
      _DataUserFlutter12State();
}

class _DataUserFlutter12State
    extends State<DataUserFlutter12> {
  void _refreshList() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Pengguna'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<UserModelSQL>>(
              future: DBHelper().getAllUsers(),
              builder: (context, snapshot) {
                if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'Terjadi kesalahan: ${snapshot.error}',
                    ),
                  );
                }

                if (!snapshot.hasData ||
                    snapshot.data!.isEmpty) {
                  return Center(
                    child: Text(
                      'Tidak ada data pengguna.',
                    ),
                  );
                }

                final daftarPengguna =
                    snapshot.data!;

                return ListView.builder(
                  itemCount: daftarPengguna.length,
                  itemBuilder: (context, index) {
                    final user =
                        daftarPengguna[index];

                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Icon(
                            Icons.person,
                          ),
                        ),
                        title: Text(
                          user.nama,
                        ),
                        subtitle: Text(
                          'Email: ${user.email}\n'
                          'No HP: ${user.noHp}\n'
                          'Sekolah/Kampus: ${user.sekolah}',
                        ),
                        isThreeLine: true,
                        trailing: Row(
                          mainAxisSize:
                              MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {
                                _showBottomSheet(
                                  context,
                                  user,
                                );
                              },
                              icon: Icon(
                                Icons.edit,
                              ),
                            ),
                            IconButton(
                              onPressed: () async {
                                if (user.id != null) {
                                  await DBHelper()
                                      .deleteUser(
                                    user.id!,
                                  );

                                  _refreshList();

                                  if (context.mounted) {
                                    ScaffoldMessenger.of(
                                      context,
                                    ).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Data berhasil dihapus',
                                        ),
                                      ),
                                    );
                                  }
                                }
                              },
                              icon: Icon(
                                Icons.delete,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showBottomSheet(
    BuildContext context,
    UserModelSQL user,
  ) {
    final namaController =
        TextEditingController(
      text: user.nama,
    );

    final emailController =
        TextEditingController(
      text: user.email,
    );

    final noHpController =
        TextEditingController(
      text: user.noHp,
    );

    final passwordController =
        TextEditingController(
      text: user.password,
    );

    final sekolahController =
        TextEditingController(
      text: user.sekolah,
    );

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom:
                MediaQuery.of(context)
                    .viewInsets
                    .bottom,
            left: 16,
            right: 16,
            top: 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize:
                  MainAxisSize.min,
              children: [
                Text(
                  'Kelola Pengguna',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                SizedBox(height: 16),

                TextField(
                  controller: namaController,
                  decoration:
                      InputDecoration(
                    labelText: 'Nama',
                    border:
                        OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 10),

                TextField(
                  controller:
                      emailController,
                  decoration:
                      InputDecoration(
                    labelText: 'Email',
                    border:
                        OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 10),

                TextField(
                  controller:
                      noHpController,
                  decoration:
                      InputDecoration(
                    labelText: 'Nomor HP',
                    border:
                        OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 10),

                TextField(
                  controller:
                      passwordController,
                  decoration:
                      InputDecoration(
                    labelText: 'Password',
                    border:
                        OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 10),

                TextField(
                  controller:
                      sekolahController,
                  decoration:
                      InputDecoration(
                    labelText:
                        'Asal Sekolah/Kampus',
                    border:
                        OutlineInputBorder(),
                  ),
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton
                          .styleFrom(
                        backgroundColor:
                            Colors.blue,
                      ),
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Update',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () async {
                        if (user.id != null) {
                          final updatedUser =
                              UserModelSQL(
                            id: user.id,
                            nama:
                                namaController
                                    .text
                                    .trim(),
                            email:
                                emailController
                                    .text
                                    .trim(),
                            noHp:
                                noHpController
                                    .text
                                    .trim(),
                            password:
                                passwordController
                                    .text,
                            sekolah:
                                sekolahController
                                    .text
                                    .trim(),
                          );

                          final success =
                              await DBHelper()
                                  .updateUser(
                            updatedUser,
                          );

                          if (success &&
                              context.mounted) {
                            Navigator.pop(
                              context,
                            );

                            _refreshList();

                            ScaffoldMessenger.of(
                              context,
                            ).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Data berhasil diperbarui',
                                ),
                              ),
                            );
                          }
                        }
                      },
                    ),

                    ElevatedButton.icon(
                      style: ElevatedButton
                          .styleFrom(
                        backgroundColor:
                            Colors.red,
                      ),
                      icon: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Delete',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () async {
                        if (user.id != null) {
                          await DBHelper()
                              .deleteUser(
                            user.id!,
                          );

                          if (context.mounted) {
                            Navigator.pop(
                              context,
                            );

                            _refreshList();

                            ScaffoldMessenger.of(
                              context,
                            ).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Data berhasil dihapus',
                                ),
                              ),
                            );
                          }
                        }
                      },
                    ),
                  ],
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }
}