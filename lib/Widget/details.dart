import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_cafe/Widget/bottombar.dart';
import 'package:swift_cafe/Widget/custom_button.dart';
import 'package:swift_cafe/Widget/toggle_switch.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                    color: const Color(0XFFD9D9D9),
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: const Color(0XFFD9D9D9),
                        borderRadius: BorderRadius.circular(4).copyWith(
                          topRight: Radius.zero,
                          bottomRight: Radius.zero,
                        ),
                        border: const Border(
                          right: BorderSide(
                            color: Color(0XFF9B9B9B),
                            width: 2.0,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '1',
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              color: Color(0XFF9B9B9B),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: const Color(0XFFD9D9D9),
                        borderRadius: BorderRadius.circular(4).copyWith(
                          topRight: Radius.zero,
                          bottomRight: Radius.zero,
                        ),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/icons/Arrow.svg",
                          height: 10,
                          colorFilter: const ColorFilter.mode(
                            Color(0XFF9B9B9B),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '4.9',
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
                '(458)',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/icons/veg.png',
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final, thin layer of frothed milk on top.',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Color(0XFFC0C0C0),
                fontSize: 10,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choice of Cup Filling',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Color(0XFFCDCDCD),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  CustomButtom(
                    isBold: true,
                    text: "Full",
                    mainColor: Color(0XFF37AD54),
                    textColor: Color(0XFFD9D9D9),
                  ),
                  CustomButtom(
                    text: "1/2 Full",
                    mainColor: Color(0XFFD9D9D9),
                    textColor: Color(0XFF000000),
                  ),
                  CustomButtom(
                    text: "3/4 Full",
                    mainColor: Color(0XFFD9D9D9),
                    textColor: Color(0XFF000000),
                  ),
                  CustomButtom(
                    text: "1/4 Full",
                    mainColor: Color(0XFFD9D9D9),
                    textColor: Color(0XFF000000),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Choice of Milk',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Color(0XFFCDCDCD),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //switch
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                children: [
                  ToggleSwitch(
                    title: 'Skim Milk',
                  ),
                  ToggleSwitch(
                    status: true,
                    title: 'Full Cream Milk',
                  ),
                  ToggleSwitch(
                    title: 'Almond Milk',
                  ),
                  ToggleSwitch(
                    title: 'Full Cream Milk',
                  ),
                  ToggleSwitch(
                    title: 'Soy Milk',
                  ),
                  ToggleSwitch(
                    title: 'Oat Milk',
                  ),
                  ToggleSwitch(
                    title: 'Lactose Free Milk',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Choice of Sugar',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Color(0XFFCDCDCD),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                children: [
                  ToggleSwitch(
                    title: 'Sugar X1',
                  ),
                  ToggleSwitch(
                    status: true,
                    title: 'Sugar X2',
                  ),
                  ToggleSwitch(
                    title: '½ Sugar',
                  ),
                  ToggleSwitch(
                    title: 'No Sugar',
                  ),
                ],
              ),
              const SizedBox(
                height: 34,
              ),
              const BottomBar(),
              const SizedBox(
                height: 34,
              ),
            ],
          )
        ],
      ),
    );
  }
}
