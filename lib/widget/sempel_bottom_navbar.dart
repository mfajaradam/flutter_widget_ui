import 'package:flutter/material.dart';

class SampelBottomNavbar extends StatefulWidget {
  const SampelBottomNavbar({super.key});

  @override
  State<SampelBottomNavbar> createState() => _SampelBottomNavbarState();
}

class _SampelBottomNavbarState extends State<SampelBottomNavbar> {
  int selectedIndex = 0;

  void _ontap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Learn Bottom Navbar",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple[50],
        iconSize: 30,
        showUnselectedLabels: false,
        // ini ketika halaman sedang ada dihome label lainnya akan hilang
        selectedItemColor: Colors.deepPurple,
        // kode Expended akan memaksa ketika ada ruang kosong untuk melebar atau memanjang
        type: BottomNavigationBarType.fixed,
        // ketika menambahkan icon lebih dari dua kode ini akan menampilkannya
        currentIndex: selectedIndex,
        onTap: _ontap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Hone',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}
