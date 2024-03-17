import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(33),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(
                      0XFF4D2B1A,
                    ),
                    Color(
                      0XFFA7745A,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 245,
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(),
              ),
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
