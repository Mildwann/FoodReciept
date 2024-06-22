// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class FoodIngredients extends StatelessWidget {
  String header;
  String amount;
  String unit;

  FoodIngredients({
    required this.header,
    required this.amount,
    required this.unit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(width * 0.05, 0, width * 0.05, 0),
        child: Column(
          children: [
            Text(header,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Color.fromARGB(255, 130, 128, 128))),
            Text(
              "$amount $unit",
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
