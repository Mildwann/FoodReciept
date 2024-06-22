import 'package:flutter/material.dart';

class Views extends StatelessWidget {
  String header;
  String amount;
  Views({required this.header, required this.amount, Key? key})
      : super(key: key);

  // Method to convert numbers to abbreviated strings (e.g., 14K, 14M)
  String formatNumber(int number) {
    if (number >= 1000000) {
      // Convert to millions (e.g., 14000000 to "14M")
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      // Convert to thousands (e.g., 14000 to "14K")
      return '${(number / 1000).toStringAsFixed(1)}K';
    } else {
      // For numbers less than 1000, display as is
      return number.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    int parsedAmount = int.tryParse(amount) ?? 0; // Parse amount to int

    return Column(
      children: [
        Text(
          header,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 128, 127, 127)),
        ),
        Text(
          formatNumber(parsedAmount),
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
