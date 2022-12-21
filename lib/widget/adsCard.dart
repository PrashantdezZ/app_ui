import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AdsCard extends StatelessWidget {
  final int percentage;
  final String restroName;
  final double rating;
  final int deliverTime;
  final Color textColor;
  const AdsCard({
    Key? key,
    required this.percentage,
    required this.restroName,
    required this.rating,
    required this.deliverTime,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185,
      width: 103,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(children: [
            Container(
              width: 103,
              height: 120,
              decoration: const BoxDecoration(boxShadow: []),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7),
                child: Image.asset(
                  'assets/images/biryani.png',
                  fit: BoxFit.none,
                ),
              ),
            ),
            Positioned(
              bottom: 17,
              left: 8,
              child: Text(
                'UPTO',
                style: GoogleFonts.tajawal(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Palette.white),
              ),
            ),
            Positioned(
              bottom: 2,
              left: 8,
              child: Text(
                '$percentage % OFF',
                style: GoogleFonts.tajawal(
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    color: Palette.white),
              ),
            )
          ]),
          Container(
            height: 65,
            padding: const EdgeInsets.only(
              top: 6.3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restroName,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.tajawal(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: textColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SvgPicture.asset(
                        'assets/icons/star.svg',
                        height: 7,
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(rating.toString(),
                        style: GoogleFonts.tajawal(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: textColor)),
                    const SizedBox(
                      width: 3,
                    ),
                    Text('| $deliverTime mins',
                        style: GoogleFonts.tajawal(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: textColor)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
