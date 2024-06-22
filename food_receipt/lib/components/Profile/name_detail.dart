// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class NameDetail extends StatelessWidget {
  String name;
  String detail;
  NameDetail({required this.name, required this.detail, super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: EdgeInsets.fromLTRB(
                width * 0.05, height * 0.04, width * 0.05, 0),
            child: Text(
              name,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            )),
        Container(
          margin:
              EdgeInsets.fromLTRB(width * 0.05, height * 0.01, width * 0.05, 0),
          child: Text(
            detail,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        )
      ],
    );
  }
}
