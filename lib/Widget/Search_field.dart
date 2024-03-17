import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390,
      height: 60,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search favorite Beverages',
          hintStyle: const TextStyle(
            fontSize: 16,
            color: Color(0XFFBBBBBC),
          ),
          suffixIcon: Image.asset("assets/images/Fill1902.png"),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage("assets/images/Fill3747.png"),
              size: 24,
            ),
          ),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
