import 'package:flutter/material.dart';

import 'package:swift_cafe/Widget/details.dart';

class ProducetOrderPage extends StatelessWidget {
  final bool isFilter;
  const ProducetOrderPage({super.key, this.isFilter = true});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/background.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 420,
                  child: Image.asset(
                    'assets/images/cof.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: isFilter
                      ? const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/card.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                        )
                      : null,
                  child: const Details(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
