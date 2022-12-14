import 'package:app_ui/design/design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNav extends StatefulWidget {

   BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int CurrentIndex =0;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 65,
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
              )
        ]
      ),
      child: BottomNavigationBar(
        currentIndex: CurrentIndex,
        onTap: (index) => setState(() =>
          CurrentIndex = index),
        

        
        type: BottomNavigationBarType.fixed,
        backgroundColor: Palette.white ,
        selectedItemColor: Palette.Pink,
        // selectedIconTheme : IconThemeData(
        //   color: Palette.Pink
        // ),
        unselectedItemColor: Palette.black,
        iconSize: 22,
        unselectedLabelStyle: GoogleFonts.inter(
          height:1.7 ,
          fontWeight: FontWeight.w500,
          fontSize: 12,
          
          
        ),
        selectedLabelStyle: GoogleFonts.inter(
          height: 1.7,
          fontWeight: FontWeight.w500,
          fontSize: 12,
          
          
        ),
        
        
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/home.svg',),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/fav1.svg'),
            label: 'WishList',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/offers.svg'),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/profile.svg'),
            label: 'Profile',
          ),
        ],
        
      ),
    
    );
  }
}