import 'package:flutter/material.dart';


class MonElevatedButton extends StatelessWidget {
  const MonElevatedButton({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.onPressed,
    required this.colorText,
  });
  final Color backgroundColor;
  final String text;
  final void Function()? onPressed;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 20, color: colorText),
      ),
    );
  }
}
