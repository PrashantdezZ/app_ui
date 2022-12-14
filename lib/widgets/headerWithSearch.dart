import 'package:app_ui/design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWithSearch extends StatelessWidget {
  const HeaderWithSearch({
    Key? key,
    required TextEditingController searchController,
  }) : _searchController = searchController, super(key: key);

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 142,
      padding: EdgeInsets.only(left: 15,right: 15,top: 53,bottom: 15),
      decoration: BoxDecoration(
        color: Palette.white,
        boxShadow: [
          
            BoxShadow(
                        offset: Offset(1, 1),
                        spreadRadius: 0,
                        blurRadius: 3,
                        color: Color.fromRGBO(87, 87, 87, 1).withOpacity(0.25),
                    )
                  ]
      ),
      
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2,right:2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/icons/menu.svg',height: 16,),
                RichText(
                  text: TextSpan(
                    children: [
                      
                      TextSpan(
                      text:'Cake',
                      style: GoogleFonts.irishGrover(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Palette.Pink
                        )
                      ),
                      WidgetSpan(child: SizedBox(width:5)),
                      TextSpan(
                      text:'&',
                      style: GoogleFonts.irishGrover(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Palette.black
                        )
                      ),
                      WidgetSpan(child: SizedBox(width:5)),
                      TextSpan(
                      text:'Flower',
                      style: GoogleFonts.irishGrover(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Palette.green
                        )
                      ),

                    ]
                  ),
                ),
                
                SvgPicture.asset('assets/icons/cart.svg'),
              ],
            ),
          ),
          SizedBox(height: 7,),
          SizedBox(
            height: 38,
            child: TextFormField(
              
              controller:_searchController,
              decoration: InputDecoration(
                hintText: 'Search cakes, flowers...',
                hintStyle: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  
          
                ),
                
                contentPadding: EdgeInsets.only(left:13,right: 19,top:10,bottom: 7),
              border: InputBorder.none,
              prefixIcon:SvgPicture.asset('assets/icons/search.svg',),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide(
                  color: Palette.black
                )
          
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: new BorderSide(color: Palette.black),
                  borderRadius: new BorderRadius.circular(6),
                ),
              
                
                
          
              ),
            ),
          )
        ],
      ),
    );
  }
}

