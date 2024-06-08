import 'package:flutter/material.dart';

class SampelListView extends StatelessWidget {
  SampelListView({super.key});

  final List colorCodes = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "learn List View",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            color: Colors.yellow[colorCodes[index]],
          );
        },
        itemCount: colorCodes.length,
        separatorBuilder: (context, index) { // memberikan jarak tapi harus menggunakan seperated, jadi builder nya di ganti
          return const Divider();
        },
        // children: [
        // Container(
        //   height: 50,
        //   color: Colors.purple[900],
        // ),
        // Container(
        //   height: 50,
        //   color: Colors.purple[800],
        // ),
        // Container(
        //   height: 50,
        //   color: Colors.purple[700],
        // ),
        // Container(
        //   height: 50,
        //   color: Colors.purple[600],
        // ),
        // Container(
        //   height: 50,
        //   color: Colors.purple[500],
        // ),
        // Container(
        //   height: 50,
        //   color: Colors.purple[400],
        // ),
        // Container(
        //   height: 50,
        //   color: Colors.purple[300],
        // ),
        // Container(
        //   height: 50,
        //   color: Colors.purple[200],
        // ),
        // Container(
        //   height: 50,
        //   color: Colors.purple[100],
        // ),
        // ],
      ),
    );
  }
}
