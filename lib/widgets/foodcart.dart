import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCart extends StatelessWidget {
  const FoodCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      height: 109,
      width: 340,
      decoration: BoxDecoration(
        color: Palette.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 1),
                      spreadRadius: 0,
                      blurRadius: 3,
                      color: Color.fromRGBO(87, 87, 87, 1).withOpacity(0.25),
                  ),
        ]
        ),
        child: Row(
          children: [
            Image.asset('assets/images/food.png',height: 96,),
            Column(
              children: [
                Row(
                  children: [
                              Text('Chicken Chilli',
                            style: GoogleFonts.tajawal(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Palette.rupeeColor
                                )
                              ),
                              Text('(Buy 2,Get 1)',
                                style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Palette.darkPink
                                    )
                              ),
                              SizedBox(width: 13,),
                              Text('\u{20B9}250',
                                style: GoogleFonts.tajawal(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Palette.rupeeColor
                                    )
                              ),

                  ],
                )
                ,Row(
                  children: [
                    Column(
                      children: [
                        Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: SvgPicture.asset('assets/icons/star.svg',height: 8,),
              ),
              SizedBox(width: 3,),
                        
              
              Text('4.2',
            style: GoogleFonts.tajawal(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Palette.rupeeColor
                        
              )
              ),
              SizedBox(width: 3,),
              
              Text('(50+ ratings)',
              style: GoogleFonts.tajawal(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Palette.rupeeColor
                        
              )
              
              ),
              
                        
            ],
          ),
                        SizedBox(
                          height: 50,
                          width: 120,
                          child: Text('1 kacchi biryani,1 Pepsi,chili onion,1kachhi biryani,1Pepsi chili',
                                
                          softWrap: true,
                          style: GoogleFonts.tajawal(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,color: Palette.rupeeColor
                            
                          ),
                          ),
                        )
                  ],
                  ),
                   Padding(
          padding: EdgeInsets.only(left:30,top:40),
          child: Container(
            padding: EdgeInsets.only(left:5,right:7),
            height: 30,
            width: 71,
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
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top:4),
                  child: Text('Add',
                    style: GoogleFonts.tajawal(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Palette.white
                     )
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Palette.white,
                    borderRadius:BorderRadius.circular(12.5),
                    // image: DecorationImage(image: AssetImage('assets/images/Vectorgift.svg'))
                  ),
                  child: SvgPicture.asset('assets/icons/Vectorgift.svg',height: 7,color: Palette.darkPink,)
                  ),
              
              ],
            ),
                          
          ),
        )
      
                  ],
                )
              ],
            )
            
          ],
        ),
    
    );
  }
}


