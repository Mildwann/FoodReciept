// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Popular extends StatelessWidget {
  String image;
  String categorie;
  Color color;
  Popular(
      {required this.image,
      required this.categorie,
      required this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      width: width * 0.28,
      height: height * 0.14,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: const EdgeInsets.all(2),
              margin: EdgeInsets.only(top: height * 0.01),
              height: height * 0.08,
              child: Image.asset(image)),
          SizedBox(
            height: height * 0.004,
          ),
          Text(
            categorie,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
