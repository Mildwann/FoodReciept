import 'package:flutter/material.dart';
import 'package:food_receipt/Pages/firstPage.dart';
import 'package:food_receipt/constants/colorApp.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SafeArea(child: firstPage()),
      theme: new ThemeData(scaffoldBackgroundColor: Colorapp.baseBackground),
      debugShowCheckedModeBanner: false,
    );
  }
}
