import 'package:flutter/material.dart';

class MonTextField extends StatelessWidget {
  const MonTextField({
    super.key,
    required this.controller,
    required this.label,
    this.suffixIcon,
    required this.validator,
    required this.obobscureText,
  });

  final String label;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final bool obobscureText;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0, right: 20.0, left: 20.0,
          ),
      child: TextFormField(
        obscureText: obobscureText,
        controller: controller,
        validator: validator,
        maxLines: 1,
        decoration: InputDecoration(
            label: Text(label),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: suffixIcon),
      ),
    );
  }
}
