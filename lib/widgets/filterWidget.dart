import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('MENU', style: GoogleFonts.tajawal(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Palette.rupeeColor
                ),
              ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                
              Container(
                height: 27,
                width: 74,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Palette.black),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/icons/filtr.svg',color:Palette.darkPink ,height: 10,),
                    Text('Sort',style:GoogleFonts.tajawal(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    )
                    ),
                    SvgPicture.asset('assets/icons/downarrow.svg',color:Palette.darkPink ,height: 7,),
                    // SvgPicture.asset('assets/images/.svg'),
                  ],
                ),
              ),
              Container(
                height: 27,
                width: 76,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Palette.black),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Text('Non-Veg',style:GoogleFonts.tajawal(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                )
                ),
              ),
           Container(
                height: 27,
                width: 74,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Palette.black),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:14),
                  child: Text('Veg',style:GoogleFonts.tajawal(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  )
                  ),
                ),
              ),
           Container(
                height: 27,
                width: 86,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Palette.black),
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Text('Best Seller',style:GoogleFonts.tajawal(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                )
                ),
              )
           
           
            ],
          )
        ]
        ),

    );
  }
}

