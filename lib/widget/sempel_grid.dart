import 'package:flutter/material.dart';

class SampelGrid extends StatelessWidget {
  SampelGrid({super.key});

  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lean Grid",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(2),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 2,
            crossAxisSpacing: 2,
          ),
          itemBuilder: (context, index) {
            return Container(
              color: Colors.purple[colorCodes[index]], // mengambil nilai yang mulai nya dari indax.
            );
          },
          itemCount: colorCodes.length, // menghitung array pada colorCodes supaya ketika mengambil nilai lagi itu sudah ditentukan.
        ),
        // GridView.count(
        //   // grid sudah menyediakan scroll ketika objek sudah melewati batas handphone.
        // scrollDirection: Axis.horizontal,
        //   crossAxisCount: 4,
        //   mainAxisSpacing: 2, // memberikan jarak secara vertikal
        //   crossAxisSpacing: 2, // memberikan jarak secara horizontal
        //   children: [
        //     Container(
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.orange,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.orange,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.orange,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.orange,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //     Container(
        //       color: Colors.purple,
        //     ),
        //     Container(
        //       color: Colors.green,
        //     ),
        //     Container(
        //       color: Colors.orange,
        //     ),
        //     Container(
        //       color: Colors.red,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
