import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtom extends StatelessWidget {
  final Color mainColor;
  final Color textColor;
  final String text;
  final bool isBold;
  const CustomButtom({
    super.key,
    required this.text,
    required this.mainColor,
    required this.textColor,
    this.isBold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                color: textColor,
                fontSize: 12,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
