import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10,bottom:10,left: 15),
      width: size.width,
      height: 105,
      decoration: BoxDecoration(
        color: Palette.white,
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
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              print('category clicked');
            },
            child: Container(
              margin: const EdgeInsets.only(left:22),
              child: Column(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  
                  decoration: BoxDecoration(
                    
                    image:const  DecorationImage(
                      fit: BoxFit.none ,
                      
                      image: AssetImage('assets/images/flowers.png'),
                      ),
                      shape: BoxShape.circle,
                    color: Palette.white,
                    boxShadow: [
                      BoxShadow(
                                offset: Offset(1, 1),
                                spreadRadius: 0,
                                blurRadius: 2,
                                color: Color.fromRGBO(0, 0, 0, 1).withOpacity(0.07),
                            ),
                      BoxShadow(
                                offset: Offset(-1, -1),
                                spreadRadius: 0,
                                blurRadius: 2,
                                color: Color.fromRGBO(0, 0, 0, 1).withOpacity(0.07),
                            )
                    ]
                    
                  ),
                ),
                
                Text(
                'Cakes',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                
                ),)
              ],
                  ),
            ),
          );
      
        },
        
        
      ),
    );
  }
}