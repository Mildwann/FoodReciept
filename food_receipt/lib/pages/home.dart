// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:food_receipt/constants/colorApp.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colorapp.baseBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(15, 55, 15, 0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/ramen.png", // Replace with your image asset
                      height: height * 0.04, // Adjust the height as needed
                    ),
                    const SizedBox(
                        width:
                            10), // Add some space between the image and the text
                    const Text(
                      "Yummie",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colorapp.red),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 55, 15, 0),
                  height: height * 0.07,
                  child: Image.asset("assets/images/profile.png"))
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            child: const Text("Let's Cook",
                style: TextStyle(
                  fontSize: 35,
                  color: Colorapp.black,
                )),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            child: const Text("Something Delicious",
                style: TextStyle(
                    fontSize: 40,
                    color: Colorapp.black,
                    fontWeight: FontWeight.w500)),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    labelText: 'Search',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
