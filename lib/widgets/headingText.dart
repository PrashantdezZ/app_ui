import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingText extends StatelessWidget {
  final String heading;
  const HeadingText({
    required this.heading,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 330,
      padding: const EdgeInsets.only(left:10,top: 9,bottom: 9,),
      decoration: BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
              BoxShadow(
                  offset: Offset(4, 4),
                  spreadRadius: 0,
                  blurRadius: 12,
                  color: Color.fromRGBO(218, 218, 218, 1).withOpacity(0.45),

              ),
              BoxShadow(
                  offset: Offset(-4, -4),
                  spreadRadius: 0,
                  blurRadius: 12,
                  color: Color.fromRGBO(218, 218, 218, 1).withOpacity(0.45),

              ),


        ]
      ),
      child: Text(heading,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w700,
                fontSize: 20
                ),
          ),
    );
  }
}