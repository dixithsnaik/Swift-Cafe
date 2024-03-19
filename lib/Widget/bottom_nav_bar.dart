import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) ontap;

  const BottomNavBar({super.key, required this.ontap, this.selectedIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: BlurryContainer(
        blur: 15,
        height: 70,
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromRGBO(51, 51, 51, 0.8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottomNavItems(0, true, "assets/icons/home.svg"),
            bottomNavItems(1, false, "assets/icons/profile.svg"),
            bottomNavItems(2, false, "assets/icons/wallet.svg"),
            bottomNavItems(3, false, "assets/icons/dustbin.svg"),
            bottomNavItems(4, false, "assets/icons/message.svg"),
          ],
        ),
      ),
    );
  }

  InkWell bottomNavItems(
    int index,
    bool isSelected,
    String iconPath,
  ) {
    return InkWell(
      child: Container(
        height: 45,
        width: 45,
        decoration: isSelected
            ? BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 2.0,
                  ),
                ],
                border: Border.all(
                  width: 1,
                  color: const Color(0XFF5E5E5E),
                ),
                color: const Color(0XFF2D2D2D),
                shape: BoxShape.circle,
              )
            : null,
        child: Center(
            child: SvgPicture.asset(
          iconPath,
          height: 24,
          colorFilter: const ColorFilter.mode(
            Color(0XFFffffff),
            BlendMode.srcIn,
          ),
        )),
      ),
    );
  }
}
