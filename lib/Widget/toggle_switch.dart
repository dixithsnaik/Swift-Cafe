import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class ToggleSwitch extends StatefulWidget {
  final String title;
  bool status;
  ToggleSwitch({
    super.key,
    required this.title,
    this.status = false,
  });

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FlutterSwitch(
            activeColor: const Color(0XFF39B256),
            padding: 0,
            toggleSize: 14,
            height: 15,
            width: 25,
            value: widget.status,
            onToggle: (val) {
              setState(() {
                widget.status=val;
              });
            },
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              widget.title,
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  color: Color(0XFFCDCDCD),
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
