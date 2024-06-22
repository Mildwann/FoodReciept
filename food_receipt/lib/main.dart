import 'package:flutter/material.dart';
import 'package:food_receipt/pages/food.dart';
import 'package:food_receipt/pages/login.dart';
import 'package:food_receipt/pages/profile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(child: Profile()),
      debugShowCheckedModeBanner: false,
    );
  }
}
