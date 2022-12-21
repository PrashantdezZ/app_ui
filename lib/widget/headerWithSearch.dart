import 'package:app_ui/design/design.dart';
import 'package:app_ui/widget/containerWithIcon.dart';
import 'package:app_ui/widget/searchWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWithSearch extends StatelessWidget {
  const HeaderWithSearch({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 1,
      height: 137,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 13),
      color: Palette.kPrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 55,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'West Mumbai ',
                            style: GoogleFonts.tajawal(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Palette.white),
                          ),
                          Text(
                            '3rd lane ',
                            style: GoogleFonts.tajawal(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Palette.white),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          'assets/icons/downarrw.svg',
                          color: Palette.white,
                          height: 10,
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/icons/fav.svg',
                            color: Palette.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/icons/carts.svg',
                            color: Palette.white,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          SizedBox(
            height: 32,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Expanded(child: SearchField()),
                SizedBox(
                  width: 12,
                ),
                ContainerWithIcon()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
