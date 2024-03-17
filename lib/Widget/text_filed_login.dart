import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  final String lable;
  const TextFieldLogin({super.key, required this.lable});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 311,
      child: TextField(
        decoration: InputDecoration(
          disabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          labelText: lable,
          labelStyle: const TextStyle(
            color: Colors.white,
          ),
        ),
        style: const TextStyle(),
      ),
    );
  }
}
