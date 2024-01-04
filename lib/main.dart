import 'package:flutter/material.dart';
import 'package:flutter_application_api/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: ('Flutter Get API Integration'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
