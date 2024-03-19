import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          filled: true,
          focusColor: Colors.white,
          fillColor: Colors.white,
          hintText: 'Search favorite Beverages',
          hintStyle: const TextStyle(
            fontSize: 16,
            color: Color(0XFFBBBBBC),
            fontWeight: FontWeight.w300,
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/filter.svg",
              height: 14,
              colorFilter: const ColorFilter.mode(
                Color(0XFFBBBBBC),
                BlendMode.srcIn,
              ),
            ),
          ),
          prefixIcon: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              height: 18,
              colorFilter: const ColorFilter.mode(
                Color(0XFFBBBBBC),
                BlendMode.srcIn,
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
