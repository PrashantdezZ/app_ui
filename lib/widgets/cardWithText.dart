import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWithText extends StatelessWidget {
  const CardWithText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.all(5),
        
        width: 168,
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
                offset: Offset(1, 1),
                spreadRadius: 0,
                blurRadius: 3,
                color: Color.fromRGBO(87, 87, 87, 1).withOpacity(0.25),
            ),
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
    
          children: [
            Container(
              height: 118,
              width: 168,
              decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(6),topRight: Radius.circular(6)),
                  
                        image:  DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/card.png')
                        )
                      ),
            ),
            // Text('google'),
    
            
            Container(
              height: 22,
              width: 168,
              padding: EdgeInsets.only(top:8,left:8),
              decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6),bottomRight: Radius.circular(6)),
    
                        
                      ),
              child: Text('Heart',
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Palette.black
              ),
              
              
              ),
            )
          ],
        ),
      ),
    );
  }
}
