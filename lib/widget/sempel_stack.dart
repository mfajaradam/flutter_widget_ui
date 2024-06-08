import 'package:flutter/material.dart';

class SampelStack extends StatelessWidget {
  const SampelStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "learn Stack",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              height: 230,
              width: 230,
              color: Colors.green,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 130,
              width: 130,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
