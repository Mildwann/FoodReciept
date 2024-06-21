// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Recent extends StatelessWidget {
  String image;
  String text;

  Recent({required this.image, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(57, 135, 131, 131),
          borderRadius: BorderRadius.circular(20)),
      width: width * 0.45,
      height: height * 0.18,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              padding: const EdgeInsets.all(2),
              margin: EdgeInsets.only(top: height * 0.01),
              height: height * 0.12,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              )),
          SizedBox(
            height: height * 0.004,
          ),
          Flexible(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
