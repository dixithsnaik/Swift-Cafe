import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlurryContainer(
      blur: 15,
      height: 70,
      borderRadius: BorderRadius.circular(15),
      color: const Color.fromRGBO(51, 51, 51, 0.8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(color: Colors.white),
            ),
          ),
          Text(
            'High Priority',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Color(0XFFCDCDCD),
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          Image.asset('assets/icons/error.png'),
          Container(
            height: 44,
            width: 146,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.5),
              image: const DecorationImage(
                image: AssetImage('assets/images/texture.png'),
              ),
              color: const Color(0XFF198133),
            ),
            child: Center(
              child: Text(
                'Submit',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Color(0XFFCDCDCD),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
