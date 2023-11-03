import 'package:flutter/material.dart';

import '../models/model_constante_medicale.dart';

class ColumnObjetEtText extends StatelessWidget {
  const ColumnObjetEtText({
    Key? key,
    required this.text1,
    required this.text2,
    required this.liste2,
    required this.colorsTextAdImage,
    required this.alignment,
  }) : super(key: key);
  final Widget text1;
  final String text2;
  final Color colorsTextAdImage;
  final MainAxisAlignment alignment;

  final List<ConstantesMedicales> liste2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: alignment,
      children: [
        text1,
        Text(
          text2,
          style: TextStyle(color: colorsTextAdImage),
        )
      ],
    );
  }
}
