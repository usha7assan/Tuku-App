import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? ontap;
  const Category(
      {super.key,
      required this.text,
      required this.color,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: screenWidth * 0.001,
        horizontal: screenWidth * 0.06,
      ),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.centerLeft,
          height: screenWidth * 0.18,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.05),
            child: Text(
              text,
              style: TextStyle(
                color: const Color(0xFFEDEADE),
                fontSize: screenWidth * 0.05,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
