import 'package:flutter/material.dart';

class SampelCard extends StatelessWidget {
  const SampelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "learn card",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(16), // memberikan ruang menggunakan padding
        child: Card(
          shape: // code untuk memberikan ukuran/style pada card
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ), // memberikan lengkungan dibagian ujung card
          child: Column(
            // supaya yang ada di dalam card itu tidak acak acakan
            mainAxisSize:
                MainAxisSize.min, // untuk mengatur panjang dari sebuah card
            children: [
              const ListTile(
                // ketiga kode kombinasi
                leading:
                    Icon(Icons.album), // memberikan icon yang berada di kiri
                title: Text("Indonesia Raya"), // judul
                subtitle: Text("Kumpulan lagu lagu nasional"), // keterangan
              ),
              const Divider(
                // memberikan pembatas antara objek / informasi dengan objek / informasi yang ada di bawah
                height: 5, // melebarkan sebuah card ke bawah
                thickness: 2, // mempertebal garis horizontal
              ),
              Row(
                // supaya objek yang ada di dalam row itu sebaris
                mainAxisAlignment:
                    MainAxisAlignment.end, // posisi objek berada di kanan
                children: [
                  TextButton(
                    // membuat tombol teks.
                    onPressed:
                        () {}, // katika teks di tekan akan memberikan aksi.
                    child: const Text("Pinjam"),
                  ),
                  const SizedBox(
                    // memberikan jarak pada ke dua objek.
                    width: 15,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("beli"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
