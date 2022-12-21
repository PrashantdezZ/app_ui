import 'package:app_ui/Screens/detailScreen.dart';
import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveyCard extends StatelessWidget {
  final int? discount;
  final int deliveryTime;
  final String restroName;
  final String location;
  final double? rating;
  final int? noOfRating;
  const DeliveyCard({
    Key? key,
    this.discount,
    required this.deliveryTime,
    required this.restroName,
    required this.location,
    this.rating,
    this.noOfRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
          DetailScreen()
        ));
      },
      child: SizedBox(
        height: 215,
        width: 135,
        child: Column(
          children: [
            Stack(children: [
              SizedBox(
                width: 135,
                height: 137,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7),
                  child: Image.asset(
                    'assets/images/biryani.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  height: 14,
                  width: 14,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.5),
                      color: Palette.white),
                  child: IconButton(
                    padding: const EdgeInsets.all(0.02),
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/fav.svg',
                      color: Palette.kPrimary,
                      height: 8,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 37,
                left: 0,
                child: Container(
                  padding: const EdgeInsets.all(2.2),
                  width: 48,
                  height: 15,
                  color: Palette.kPrimary,
                  child: Text(
                    '$discount%OFF',
                    style: GoogleFonts.tajawal(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Palette.white),
                  ),
                ),
              ),
              Positioned(
                bottom: 13,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  height: 15,
                  width: 63,
                  color: Palette.kPrimary,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/Uniontime.svg',
                        color: Palette.white,
                        height: 8,
                      ),
                      Text(
                        '${deliveryTime}mins',
                        style: GoogleFonts.tajawal(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Palette.white),
                      )
                    ],
                  ),
                ),
              )
            ]),
            Container(
              height: 65,
              padding: const EdgeInsets.all(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    restroName,
                    style: GoogleFonts.tajawal(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Palette.kPrimaryText),
                  ),
                  Text(
                    location,
                    style: GoogleFonts.tajawal(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Palette.kPrimaryText),
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
                              color: Palette.rupeeColor)),
                      const SizedBox(
                        width: 3,
                      ),
                      Text('($noOfRating+ )',
                          style: GoogleFonts.tajawal(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Palette.rupeeColor)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
