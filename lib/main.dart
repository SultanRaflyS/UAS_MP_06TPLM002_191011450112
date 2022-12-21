import 'package:flutter/material.dart';
import 'package:uas_mp/screen/beritaterkini_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BERITA NEWS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BeritaScreen(),
    );
  }
}