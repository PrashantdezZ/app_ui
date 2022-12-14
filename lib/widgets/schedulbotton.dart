
import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Schedule extends StatelessWidget {
  const Schedule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:15),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 30,
        width: 91,
        decoration: BoxDecoration(
          color: Palette.darkPink,
          borderRadius: BorderRadius.circular(56.74),
          boxShadow: [
            BoxShadow(
                      offset: Offset(0, 8),
                      spreadRadius: 0,
                      blurRadius: 14,
                      color: Color.fromRGBO(245, 90, 81, 1).withOpacity(0.08),
                  ),
                  BoxShadow(
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                      blurRadius: 5,
                      color: Color.fromRGBO(245, 90, 81, 1).withOpacity(0.08),
                  ),
                  BoxShadow(
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                      blurRadius: 3,
                      color: Color.fromRGBO(245, 90, 81, 1).withOpacity(0.08),
                  )
          ]
                      
                      
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
            padding: const EdgeInsets.only(bottom: 0.5),
            child: SvgPicture.asset('assets/icons/Vectorgift.svg',height: 15,color: Palette.white,),
          ),
          Text('Schedule',
          style: GoogleFonts.tajawal(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: Palette.white
               )
            ),
          ],
        ),
                      
      ),
    );
  }
}

