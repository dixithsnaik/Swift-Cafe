import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swift_cafe/Widget/Search_field.dart';
import 'package:swift_cafe/Widget/bottom_nav_bar.dart';
import 'package:swift_cafe/Widget/product_card.dart';
import 'package:swift_cafe/Widget/navigation_bar.dart';
import 'package:swift_cafe/Widget/product_card_model.dart';
import 'package:swift_cafe/Widget/product_details_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: size.height > 1000 ? 932 : size.height,
          width: size.width > 500 ? 430 : size.width,
          child: Stack(
            children: [
              Container(
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
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: SafeArea(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const NavigationBarHome(),
                            const SizedBox(
                              height: 20,
                            ),
                            const Center(child: SearchField()),
                            const SizedBox(
                              height: 25,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(49, 49, 49, 0.5),
                              ),
                              width: size.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20,
                                    ),
                                    child: Text(
                                      'Most Popular Beverages',
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                            color: Color(0XFFB6B6B6),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: List.generate(
                                        products.length,
                                        (index) {
                                          final e = products[index];
                                          return Padding(
                                            padding: EdgeInsets.only(
                                                left: index == 0 ? 20 : 0),
                                            child: DetailsCard(
                                                imgUrl: e.imgUrl,
                                                desc: e.desc,
                                                purchages: e.purchages,
                                                rate: e.rate,
                                                title: e.title),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 21,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Get it instantly',
                                    style: GoogleFonts.inter(
                                      textStyle: const TextStyle(
                                          color: Color(0XFFB6B6B6),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const ProductDetailsCard(
                                      imgUrl: "assets/images/10.png",
                                      desc: "Espresso, Steamed Milk",
                                      purchages: 458,
                                      rate: 4.9,
                                      title: 'Hot Cappuccino'),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const ProductDetailsCard(
                                      imgUrl: "assets/images/10.png",
                                      desc: "Espresso, Steamed Milk",
                                      purchages: 458,
                                      rate: 4.9,
                                      title: 'Hot Cappuccino'),
                                  const SizedBox(
                                    height: 120,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                width: size.width > 500 ? 430 : size.width,
                bottom: 20,
                child: BottomNavBar(ontap: (e) {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
