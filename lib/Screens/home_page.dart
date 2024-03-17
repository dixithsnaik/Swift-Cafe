import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:swift_cafe/Widget/Search_field.dart';
import 'package:swift_cafe/Widget/navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/home.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: const SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  NavigationBarHome(),
                  SizedBox(
                    height: 20,
                  ),
                  SearchField()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
