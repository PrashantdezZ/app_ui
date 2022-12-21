import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodCategory extends StatelessWidget {
  const FoodCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('category clicked');
      },
      child: Container(
        margin: const EdgeInsets.only(left: 22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.none,
                    image: AssetImage('assets/images/biryani.png'),
                  ),
                  shape: BoxShape.circle,
                  color: Palette.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 8),
                      spreadRadius: 0,
                      blurRadius: 14,
                      color: const Color.fromRGBO(14, 31, 53, 1)
                          .withOpacity(0.08),
                    ),
                    BoxShadow(
                      offset: const Offset(0, 2),
                      spreadRadius: 0,
                      blurRadius: 5,
                      color: const Color.fromRGBO(14, 31, 53, 1)
                          .withOpacity(0.12),
                    )
                  ]),
            ),
            Text(
              'Veg Only',
              style: GoogleFonts.tajawal(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Palette.kBlack),
            )
          ],
        ),
      ),
    );
  }
}
