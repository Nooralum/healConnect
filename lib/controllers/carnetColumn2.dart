import 'package:flutter/material.dart';

import 'constant.dart';

class CarnetColumn2 extends StatelessWidget {
  const CarnetColumn2({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          style: const TextStyle(fontSize: 15.0),
        ),
        Text(
          text2,
          style: const TextStyle(
              color: kBgroundBlue, fontWeight: FontWeight.bold, fontSize: 15.0),
        )
      ],
    );
  }
}
