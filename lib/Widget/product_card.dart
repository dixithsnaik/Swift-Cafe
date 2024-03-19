import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_cafe/Screens/product_order_page.dart';

class DetailsCard extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String desc;
  final double rate;
  final int purchages;

  const DetailsCard({
    super.key,
    required this.imgUrl,
    required this.desc,
    required this.purchages,
    required this.rate,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ProducetOrderPage(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(225, 225, 225, 0.25),
          image: const DecorationImage(
            image: AssetImage(
              "assets/images/texture.png",
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: const Color.fromRGBO(225, 225, 225, 0.25),
            width: 1,
          ),
        ),
        height: 265,
        width: 215,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imgUrl,
              fit: BoxFit.cover,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0XFFCDCDCD),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          desc,
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              color: Color(0XFF303030),
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                      ],
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      color: const Color(0XFF66A35C),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
