import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/styles.dart' as styles;

class NavItem extends StatefulWidget {
  const NavItem({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        onPressed: () {},
        style: TextButton.styleFrom(
            foregroundColor: styles.jet, padding: const EdgeInsets.all(10)),
        child: Text(widget.text,
            style: isHover
                ? styles.regularTextStyle.copyWith(color: Colors.red)
                : styles.regularTextStyle));
  }
}
