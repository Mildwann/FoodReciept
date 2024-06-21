import 'package:flutter/material.dart';
import 'package:food_receipt/pages/home.dart';
import 'package:food_receipt/pages/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(child: LoginPage()),
      debugShowCheckedModeBanner: false,
    );
  }
}
