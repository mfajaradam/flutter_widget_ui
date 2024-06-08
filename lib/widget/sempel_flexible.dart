import 'package:flutter/material.dart';

class SampelFlexible extends StatelessWidget {
  const SampelFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Learn flexible",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Row(
        children: [
          Expanded(
            child: _sampelBox(),
          ),
          Expanded(
            // kode Expended akan memaksa ketika ada ruang kosong untuk melebar atau memanjang
            child: _sampelBox(),
          ),
          Expanded(
            child: _sampelBox(),
          ),
        ],
      ),
    );
  }
}

Widget _sampelBox() {
  return Container(
    width: 50,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(),
      color: Colors.black26,
    ),
  );
}

// Row(
//         // crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Flexible(
//             flex: 3, // untuk mengatur bagian box
//             fit:
//                 FlexFit.tight, // kode tight ini akan memenuhin area yang kosong karena di bantu oleh kode flex: 3,
//             child: _sampelBox(),
//           ),
//           Flexible(
//             fit: FlexFit
//                 .loose, // kode loose ini tetap memenuhi aturan yang di berikan container panjang dan lebarnya, berbeda dengan yang atas
//             child: _sampelBox(),
//           ),
//           Flexible(
//             fit: FlexFit.tight,
//             child: _sampelBox(),
//           ),
//         ],
//       ),