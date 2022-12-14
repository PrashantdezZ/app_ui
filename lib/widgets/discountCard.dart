import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(10),
        width: 340,
        height: 66,
        decoration: BoxDecoration(
          color: Palette.pinkFill,
          borderRadius: BorderRadius.circular(6)
          
        ),
        child: Row(
          children: [
            
            Container(
              padding: EdgeInsets.all(9.2),
                  height: 43,
                  width: 43,
                  decoration: BoxDecoration(
                    
                    color: Palette.darkPink,
                    
                    
                    borderRadius: BorderRadius.circular(21.5)),
                  child: 
                  SvgPicture.asset('assets/icons/Vector.svg',color: Palette.white,),
                ),
            SizedBox(width: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[ 
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('UPTO',
                style: GoogleFonts.tajawal(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Palette.rupeeColor
                ),
                ),
                Text('40% OFF',
                style: GoogleFonts.tajawal(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Palette.rupeeColor
                ),
                ),
                ],
              ),
              SizedBox(width:160,),
                Text('1/3',style: GoogleFonts.tajawal(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Palette.rupeeColor
                  ),
                )
              ]
            )
          

          ],
        ),

      )
    );
  }
}