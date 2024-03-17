import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:swift_cafe/Screens/home_page.dart';
import 'package:swift_cafe/Widget/signin_button.dart';
import 'package:swift_cafe/Widget/text_filed_login.dart';

class CardLogin extends StatelessWidget {
  const CardLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlurryContainer(
      color: const Color.fromRGBO(225, 225, 225, 0.2),
      blur: 15,
      
      height: size.height * 0.85,
      width: size.width * 0.85,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 70,
            child: Image.asset('assets/images/logo.png'),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(
                  color: Colors.white, fontSize: 64, fontFamily: 'raleway'),
              children: <TextSpan>[
                TextSpan(text: 'Swift'),
                TextSpan(
                  text: '\nCafé',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'raleway'),
                ),
              ],
            ),
          ),
          const Text(
            '"Latte but never late"',
            style: TextStyle(
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(0, 0),
                  blurRadius: 30,
                  color: Colors.white,
                ),
                Shadow(
                  offset: Offset(0, 0),
                  blurRadius: 8.0,
                  color: Colors.white38,
                ),
              ],
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Poppins',
            ),
          ),
          const TextFieldLogin(
            lable: 'User Name',
          ),
          const TextFieldLogin(
            lable: 'Password',
          ),
          const SizedBox(
            height: 20,
          ),
          const LoginButton(),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 49,
            width: 245,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll<Color>(
                  Colors.transparent,
                ),
                shadowColor: const MaterialStatePropertyAll<Color>(
                  Colors.transparent,
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
              child: const Text(
                'Signup',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Privacy Policy',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
