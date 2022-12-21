import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingWithLink extends StatelessWidget {
  const HeadingWithLink({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Fastest Delivey',
            style: GoogleFonts.tajawal(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Palette.kPrimaryText),
          ),
          Text(
            'Map View',
            style: GoogleFonts.tajawal(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Palette.kPrimary),
          )
        ],
      ),
    );
  }
}