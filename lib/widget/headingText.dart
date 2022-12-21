import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingText extends StatelessWidget {
  String heading;
   HeadingText({
    required this.heading
   
  }) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text(
          heading,
          style: GoogleFonts.tajawal(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Palette.kPrimaryText),
        ),
      ]),
    );
  }
}
