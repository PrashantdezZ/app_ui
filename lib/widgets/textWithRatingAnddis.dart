import 'package:app_ui/design/design.dart';
import 'package:app_ui/widgets/schedulbotton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWithRatingAndDistanceSection extends StatelessWidget {
  const TextWithRatingAndDistanceSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding:EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Mad Chef Kitchen',
              style: GoogleFonts.tajawal(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: Palette.rupeeColor
              ),
              ),
                                  
              SvgPicture.asset('assets/icons/fav1.svg',color: Palette.Pink,)
            ],
          ),
        ),
        
        Padding(
          padding: EdgeInsets.only(left:15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('3 rd lane,West Mumbai',
            style: GoogleFonts.tajawal(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Palette.lightText
                          
              )
              ),
              SizedBox(width: 12,),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: SvgPicture.asset('assets/icons/Uniontime.svg',height: 12,)),
              SizedBox(width: 7,),
              Text('25 - 30 mins',
              style: GoogleFonts.tajawal(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Palette.rupeeColor
                          
              )
              
              )
                          
            ],
          ),
        )
      ,SizedBox(height: 9,),
      Padding(
        padding: EdgeInsets.only(left: 15),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: SvgPicture.asset('assets/icons/star.svg',height: 12,),
              ),
              SizedBox(width: 3,),
                        
              
              Text('4.2',
            style: GoogleFonts.tajawal(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Palette.rupeeColor
                        
              )
              ),
              SizedBox(width: 3,),
              
              Text('(500+ ratings)',
              style: GoogleFonts.tajawal(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Palette.rupeeColor
                        
              )
              
              ),
              SizedBox(width: 9,),
              Text('More info >',
              style: GoogleFonts.tajawal(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Palette.Pink
                        
              )
              
              ),
                        
            ],
          ),
     
      ),
        Padding(
          padding: EdgeInsets.only(left:15),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: SvgPicture.asset('assets/icons/star.svg',height: 12,),
              ),
                SizedBox(width: 3,),
              Text('1.5 km',
            style: GoogleFonts.tajawal(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Palette.rupeeColor
                          
              )
              ),
                          
            ],
          ),
        ),
        
        SizedBox(height: 20,),
        Schedule()
      
      ],
    );
  }
}

