import 'package:flutter/material.dart';

class SampelContainer extends StatelessWidget {
  const SampelContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // scaffold menyediakan ruang untuk kita coding seperti body pada html, default nya berwarna putih
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Belajar Container",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity, // menyesuaikan ukuran layar
        height: 300,
        padding: const EdgeInsets.all(16), // menambah jarak pada suatu objek.
        decoration: BoxDecoration( // untuk mendekor container sebagus bagusnya.
          color: Colors.grey, // memberikan background color pada container.
          borderRadius: BorderRadius.circular(50), // membuat lengkungan di bagian ujung yang lancip.
          border: Border.all( // membuat bingkai berwarna merah dengan ketebalan 2px.
            width: 2,
            color: Colors.red,
          ),
        ),
        child: const Text(
          "ini containercontainercontainercontainercontainercontainercontainercontainercontainercontainercontainer",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis, // ketika objek keluar dari batas yang sudah ditentukan akan berubah menjadi ...
          style: TextStyle(
            color: Colors.purple, // memberikan warna pada teks.
            fontSize: 40,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
