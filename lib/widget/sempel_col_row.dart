import 'package:flutter/material.dart';

class SampelColRow extends StatelessWidget {
  const SampelColRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Belajar Column & Row",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        // Column dan Row mempunyai banyak widget karena terdapat kode children, sedangkan container itu mempunyai 1 widget saja yaitu child.
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  color: Colors.blue,
                ),
                Container(
                  width: 50,
                  color: Colors.black,
                ),
                Container(
                  width: 50,
                  color: Colors.pink,
                ),
                Container(
                  width: 50,
                  color: Colors.teal,
                ),
              ],
            ),
          ),
          Container(
            height: 30,
            color: Colors.green,
          ),
          Container(
            height: 30,
            color: Colors.red,
          ),
          Container(
            height: 30,
            color: Colors.yellow,
          ),
          Container(
            height: 30,
            color: Colors.purple,
          ),
          Container(
            height: 30,
            color: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
