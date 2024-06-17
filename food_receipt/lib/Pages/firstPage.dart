// ignore: file_names
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:food_receipt/constants/colorApp.dart';
import 'package:food_receipt/constants/fonts.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 45),
            alignment: Alignment.center,
            child: const Text("Yumify", style: Fonts.medium),
          ),
          SizedBox(
              height: 350, child: Image.asset("assets/images/chicken1.png")),
          const Padding(
            padding: EdgeInsets.only(top: 35),
            child: Text(
              "Let's Cook",
              style: Fonts.big,
            ),
          ),
          const Text(
            "Something Yum!",
            style: Fonts.mostBig,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12),
            child: Text(
              "Find the best food recipes",
              style: Fonts.small,
            ),
          ),
          GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: Colorapp.red,
                    borderRadius: BorderRadius.circular(15)),
                margin: const EdgeInsets.only(top: 40),
                width: width * 0.5,
                padding: const EdgeInsets.all(20),
                child: const Column(children: [
                  Text(
                    "Start Cooking ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w500),
                  ),
                ]),
              ))
        ],
      ),
    );
  }
}
