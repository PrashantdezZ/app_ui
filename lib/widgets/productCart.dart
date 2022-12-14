import 'package:app_ui/Screens/detailScreen.dart';
import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen()));
      },
      child: Container(
      height: 200,
      margin: EdgeInsets.all( 4),
      // padding: EdgeInsets.only(right: 10),
      width: 140,
      decoration: BoxDecoration(
        color: Palette.cardfillColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          
                  BoxShadow(
                          offset: Offset(1, 1),
                          spreadRadius: 0,
                          blurRadius: 3,
                          color: Color.fromRGBO(87, 87, 87, 1).withOpacity(0.25),
                      ),
                  BoxShadow(
                          offset: Offset(-1, -1),
                          spreadRadius: 0,
                          blurRadius: 3,
                          color: Color.fromRGBO(87, 87, 87, 1).withOpacity(0.25),
                      ),
        ]
      ),
      
      child: Column(
        children: [
          Container(
            height: 124,
            
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(6),topRight: Radius.circular(6)),
        
              image:  DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/card.png')
              )
            ),
          ),
          
          Container(
            height: 82,
            width: 140,
            padding: EdgeInsets.all(8),
            decoration:const  BoxDecoration(
              color:Palette.cardfillColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6),bottomRight: Radius.circular(6)),
                
                ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Black Forest Cake',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Palette.black
                      ),
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('\u{20B9}390',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Palette.rupeeColor,
                      ),
                      ),
                      SizedBox(width: 7,),
                      Text('\u{20B9}350',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Palette.rupeeDiscount,
                      ),
                      )
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset('assets/icons/star.svg'),
                      Text('4.2',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Palette.rupeeColor,
                      ),
                      ),
                      Text('(50 Reviews)',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Palette.rupeeColor,
                      ),
                      ),
                    ],
                  )
                ],
              ),
          )
    
        ],
      ),
       ),
    );
  }
}

