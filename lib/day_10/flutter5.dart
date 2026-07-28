import 'package:flutter/material.dart';

class Flutter5 extends StatefulWidget {
  const Flutter5({super.key});

  @override
  State<Flutter5> createState() => _Flutter5State();
}

class _Flutter5State extends State<Flutter5> {
  int counter = 10;

  bool showSecretText = false;
  bool isFavorite = false;
  bool showDescription = false;
  bool showMessage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Interaksi Flutter"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),

            Text("ini tentang ElevatedButton:"),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  showSecretText = !showSecretText;
                });
                debugPrint("ElevatedButton ditekan");
              },
              child: Text("Klik Saya!"),
            ),

            if (showSecretText)
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text("Halo, saya Developer!"),
              ),

            SizedBox(height: 25),

            Text("ini tentang IconButton:"),

            IconButton(
              iconSize: 40,
              icon: Icon(
                Icons.favorite,
                color: isFavorite ? Colors.red : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
                debugPrint("IconButton ditekan");
              },
            ),

            Text(isFavorite ? "Disukai!" : "Belum Disukai"),

            SizedBox(height: 25),

            Text("ini tentang TextButton:"),

            TextButton(
              onPressed: () {
                setState(() {
                  showDescription = !showDescription;
                });
                debugPrint("TextButton ditekan");
              },
              child: Text(
                showDescription ? "Sembunyikan Deskripsi" : "Lihat Deskripsi",
              ),
            ),

            if (showDescription)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Flutter adalah framework dari Google untuk membuat aplikasi Android, iOS, Web, dan Desktop.",
                  textAlign: TextAlign.center,
                ),
              ),

            SizedBox(height: 25),

            Text("ini tentang InkWell:"),

            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: InkWell(
                onTap: () {
                  debugPrint("InkWell ditekan");

                  setState(() {
                    showMessage = true;
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Sentuhan terdeteksi!")),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Sentuh Kotak Ini",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 8),

            if (showMessage) Text("Sentuhan terdeteksi!"),

            SizedBox(height: 25),

            Text("ini tentang GestureDetector:"),

            SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    counter++;
                  });
                  debugPrint("Tap");
                },
                onDoubleTap: () {
                  setState(() {
                    counter += 2;
                  });
                  debugPrint("Double Tap");
                },
                onLongPress: () {
                  setState(() {
                    counter += 3;
                  });
                  debugPrint("Long Press");
                },
                child: Container(
                  width: double.infinity,
                  height: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: Text(
                    "Angka: $counter",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 15),

            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "• Tap = +1\n"
                "• Double Tap = +2\n"
                "• Long Press = +3",
                textAlign: TextAlign.left,
              ),
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter--;
          });
          debugPrint("FAB ditekan");
        },
        tooltip: "Kurangi",
        child: Icon(Icons.remove),
      ),
    );
  }
}
