import 'package:flutter/material.dart';
import 'package:flutter_widget_ui/widget/sempel_bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home:
          const SampelBottomNavbar(), // ini yang menghubungkan antara satu file ke file kedua
    );
  }
}
