import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ImageDay10 extends StatefulWidget {
  const ImageDay10({super.key});

  @override
  State<ImageDay10> createState() => _ImageDay10State();
}

class _ImageDay10State extends State<ImageDay10> {
  bool showImage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Day 10"), backgroundColor: Colors.blue),
      body: Column(
        children: [
          Image.asset("assets/images/My_Luv_Hirono.jpg", height: 200),
          showImage
              ? Image.network(
                  "https://sanriowiki.s3.us-east-va.io.cloud.ovh.us/thumb/2/23/Cinnamoroll.png/200px-Cinnamoroll.png",
                  height: 200,
                )
              : Container(color: Colors.blue, height: 200, width: 200),
          showImage
              ? Image.network(
                  "https://sanriowiki.s3.us-east-va.io.cloud.ovh.us/thumb/2/23/Cinnamoroll.png/200px-Cinnamoroll.png",
                  height: 200,
                )
              : Shimmer(
                  child: Container(color: Colors.teal, height: 200, width: 200),
                ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: showImage ? Colors.blue : Colors.teal,
            ),
            onPressed: () {
              setState(() {});
              showImage = !showImage;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    !showImage ? "Gambar disembunyikan" : "Gambar ditampilkan",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
            child: Text(
              showImage ? "Sembunyikan" : "Tampilkan",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
