import 'package:flutter/material.dart';
import 'package:swift_cafe/Widget/card_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/background.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/texture.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: const Center(
              child: CardLogin(),
            ),
          ),
        ),
      ),
    );
  }
}
