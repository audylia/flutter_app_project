import 'package:flutter/material.dart';

class Flutter4 extends StatelessWidget {
  const Flutter4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Manajemen Data Pelanggan",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xffBD1B1B),
      ),

      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(2, 4),
                ),
              ],
            ),

            child: Column(
              children: [
                const Text(
                  "Form Data Pelanggan",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: "Input Nama",
                    filled: true,
                    fillColor: Colors.red.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone),
                    hintText: "Input Kontak",
                    filled: true,
                    fillColor: Colors.red.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    hintText: "Input Email",
                    filled: true,
                    fillColor: Colors.red.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.home),
                    hintText: "Input Alamat",
                    filled: true,
                    fillColor: Colors.red.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Daftar Pelanggan",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 10),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 5),
              ],
            ),
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xff326792),
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: Text(
                "Ajeng Putri Kurnia",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Aktif"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 5),
              ],
            ),
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xff326792),
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: Text(
                "Audylia Aska Widiaputri",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Aktif"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 5),
              ],
            ),
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xff326792),
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: Text(
                "Bella Gita Asmara",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Aktif"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 5),
              ],
            ),
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xff326792),
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: Text(
                "Farhiyah Suhlah Diaz",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Non-Aktif"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 5),
              ],
            ),
            child: const ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xff326792),
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: Text(
                "Fatimah Falah Soebyanto",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Aktif"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}