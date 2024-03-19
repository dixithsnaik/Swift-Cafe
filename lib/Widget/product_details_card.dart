import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsCard extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String desc;
  final double rate;
  final int purchages;

  const ProductDetailsCard({
    super.key,
    required this.imgUrl,
    required this.desc,
    required this.purchages,
    required this.rate,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(225, 225, 225, 0.25),
        image: const DecorationImage(
          image: AssetImage(
            "assets/images/texture.png",
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: const Color.fromRGBO(225, 225, 225, 0.25),
          width: 1,
        ),
      ),
      height: 163,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lattè',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Color(0XFFCDCDCD),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    rate.toString(),
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset(
                    "assets/icons/star.svg",
                    height: 10,
                    colorFilter: const ColorFilter.mode(
                      Color(0XFFFFC003),
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '($purchages)',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color(0XFF000000),
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 202,
                child: Text(
                  'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0XFFC0C0C0),
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 4,
          ),
          SizedBox(
            height: 135,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/10.png',
                  height: 122,
                  width: 119,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 30,
                  bottom: 0,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color(0XFF66A35C),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        'ADD',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Color(0XFFffffff),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
