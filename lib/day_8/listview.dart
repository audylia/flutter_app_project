import 'package:flutter/material.dart';

class ListViewDay8 extends StatelessWidget {
  const ListViewDay8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView day 8"),
        backgroundColor: Color(0xffBD1B1B),
      ),
      body:
          //Versi 4
          ListView.separated(
            itemCount: 100,
            separatorBuilder: (BuildContext context, int index) {
              return Divider(height: 100);
            },
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Text("${index + 1}"),
                title: Text("Nama : ${index + 1}"),
                subtitle: Text("Email : ${index + 1}"),
                trailing: Icon(Icons.arrow_forward),
              );
            },
          ),
      //Versi 3
      // ListView.builder(
      //   itemCount: 100,
      //   itemBuilder: (BuildContext context, int index) {
      //     return Column(
      //       children: [
      //         Container(
      //           width: double.infinity,
      //           color: Colors.red,
      //           child: Text(
      //             "data $index",
      //             style: TextStyle(color: Colors.white, fontSize: 20),
      //           ),
      //         ),
      //         SizedBox(height: 10),
      //       ],
      //     );
      //   },
      // ),
      // Versi 2

      // ListView.custom(
      //   childrenDelegate: SliverChildBuilderDelegate(childCount: 100, (
      //     context,
      //     index,
      //   ) {
      //     return Column(
      //       children: [
      //         Container(
      //           width: double.infinity,
      //           color: Colors.red,
      //           child: Text(
      //             "data $index",
      //             style: TextStyle(color: Colors.white, fontSize: 20),
      //           ),
      //         ),
      //         SizedBox(height: 10),
      //       ],
      //     );
      //   }),
      // ),
      // Versi 1
      // ListView(
      //   children: [
      //     Container(color: Colors.blue, height: 400, width: 400),
      //     Container(color: Colors.black, height: 300, width: 300),
      //     Container(color: Colors.cyan, height: 200, width: 200),
      //     Container(color: Colors.blue, height: 400, width: 400),
      //     Container(color: Colors.black, height: 300, width: 300),
      //     Container(color: Colors.cyan, height: 200, width: 200),
      //   ],
      // ),
    );
  }
}
