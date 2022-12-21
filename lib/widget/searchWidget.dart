import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
          color: Palette.white, borderRadius: BorderRadius.circular(6)),
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.white,
          hintText: ' Search for reatuarant and dishes',
          hintStyle: GoogleFonts.tajawal(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          contentPadding:
              const EdgeInsets.only(left: 13, right: 19, top: 10, bottom: 7),
          border: InputBorder.none,
          prefixIconConstraints: const BoxConstraints(
              maxHeight: 16, minHeight: 16, maxWidth: 16, minWidth: 16),
          prefixIcon: SvgPicture.asset(
            'assets/icons/searchh.svg',
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: const BorderSide(color: Colors.transparent)),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }
}
