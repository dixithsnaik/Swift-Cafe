import 'package:flutter/material.dart';

class NavigationBarHome extends StatelessWidget {
  const NavigationBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/icon.png',
                height: 27,
              ),
              const SizedBox(
                width: 20,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "20/12/2022",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color(0XFFB6B6B6),
                    ),
                  ),
                  Text(
                    "Joshua Scanlan",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0XFFB6B6B6),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: const Color(0XffF9F9F9),
                    borderRadius: BorderRadius.circular(7)),
                height: 40,
                width: 40,
                child: Center(
                  child: Image.asset(
                    'assets/images/delete.png',
                    width: 18,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 39,
                width: 39,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/profile.png',
                  height: 39,
                  width: 39,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
