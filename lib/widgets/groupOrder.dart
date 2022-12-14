import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroupOderButton extends StatelessWidget {
  const GroupOderButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: 100,
       width: 360,
       child: Container(
                   height: 99,
                   width: 360,
                   padding: EdgeInsets.all(27),
                   decoration: BoxDecoration(
                   color: Palette.white,
                   boxShadow: [
                     BoxShadow(
                               offset: Offset(0, -4),
                               spreadRadius: 0,
                               blurRadius: 8,
                               color: Color.fromRGBO(151, 151, 151, 1).withOpacity(0.29),
                           )
                   ]
                 ),
                 child: Container(
                   height: 45,
                   width: 320,
                   padding: EdgeInsets.all(10),
                   
                   decoration: BoxDecoration(
               color: Palette.darkPink,
               borderRadius: BorderRadius.circular(8),
         
             ),
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                     padding: EdgeInsets.only(left: 8,top: 7),
                     height: 26,
                     width: 26,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(13),
                       border: Border.all(color: Palette.white),
                     ),
                     child: Text('2',style: GoogleFonts.tajawal(
                       fontWeight: FontWeight.w500,
                       fontSize: 14,
                       color: Palette.white
                     ),)
                     ),
                   Text('View Your Order',
                       style:GoogleFonts.tajawal(
                         fontWeight: FontWeight.w700,
                         fontSize: 18,
                         color: Palette.white
                       ) ,
                   ),
                   Text('\u{20B9}2700',
                       style:GoogleFonts.tajawal(
                         fontWeight: FontWeight.w700,
                         fontSize: 18,
                         color: Palette.white
                       ) ,
                   )
               ],
             ),
                 ),
                  ),
                   );
  }
}

