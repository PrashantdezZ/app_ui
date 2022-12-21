import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NearByRestroCard extends StatelessWidget {
  final String? deliveryType;
  final int deliveryTime;
  final String restroName;
  final String location;
  final double? rating;
  final int? noOfRating;
  const NearByRestroCard({
    Key? key,
    
    this.deliveryType,
    required this.deliveryTime,
    required this.restroName,
    required this.location,
    this.rating,
    this.noOfRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 100,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset('assets/images/roll.png'),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  restroName,
                  style: GoogleFonts.tajawal(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Palette.kPrimaryText),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/icons/location.svg'),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      location,
                      style: GoogleFonts.tajawal(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Palette.kPrimaryText),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SvgPicture.asset(
                        'assets/icons/star.svg',
                        height: 12,
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(rating.toString(),
                        style: GoogleFonts.tajawal(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Palette.kPrimaryText)),
                    const SizedBox(
                      width: 3,
                    ),
                    Text('($noOfRating+ )',
                        style: GoogleFonts.tajawal(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Palette.kPrimaryText)),
                    Text('| $deliveryTime min',
                        style: GoogleFonts.tajawal(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Palette.kPrimaryText)),
                    Text('| $deliveryType',
                        style: GoogleFonts.tajawal(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Palette.kPrimary)),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
