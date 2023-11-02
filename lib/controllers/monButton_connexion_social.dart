import 'package:flutter/material.dart';

class BouttonConnexion extends StatelessWidget {
  const BouttonConnexion({
    super.key,
    required this.text,
    required this.imagePath,
    required this.backgroundColor,
    required this.onTap,
    required this.textColor,
    required this.colorBorder,
  });
  final String text;
  final Color textColor;
  final String imagePath;
  final Color backgroundColor;
  final void Function()? onTap;
  final Color colorBorder;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 65,
          decoration: BoxDecoration(
              color: backgroundColor,
              border: Border.all(
                color: colorBorder,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                imagePath,
                height: 50,
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: textColor),
              ),
              Opacity(
                opacity: 0.0,
                child: Image.asset(
                  imagePath,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
