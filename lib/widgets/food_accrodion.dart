import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'foodcart.dart';

class FoodAccordion extends StatelessWidget {
  const FoodAccordion({super.key});

  @override
  Widget build(BuildContext context) {
    List<bool> isOpen = [false, false];
    Size size = MediaQuery.of(context).size;
    return Accordion(
      openAndCloseAnimation: false,
      headerBackgroundColor: Palette.darkPink,
      headerBackgroundColorOpened: Palette.darkPink,
      disableScrolling: true,
      headerBorderRadius: 0.1,
      flipRightIconIfOpen: true,
      header: Container(
        padding: const EdgeInsets.all(12),
        width: size.width,
        height: 42,
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'Family Combo',
                style: GoogleFonts.tajawal(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Palette.white)),
            const WidgetSpan(child: SizedBox(width: 5)),
            TextSpan(
                text: '(5 items)',
                style: GoogleFonts.tajawal(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Palette.white)),
          ]),
        ),
      ),
      children: [
        AccordionSection(
            contentHorizontalPadding: 1,
            contentBorderColor: Colors.transparent,
            contentVerticalPadding: 5,
            contentBorderWidth: 1,
            scrollIntoViewOfItems: ScrollIntoViewOfItems.fast,
            header: Container(
              padding: const EdgeInsets.all(10),
              width: size.width,
              height: 42,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Family Combo',
                      style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Palette.white)),
                  const WidgetSpan(child: SizedBox(width: 5)),
                  TextSpan(
                      text: '(5 items)',
                      style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Palette.white)),
                ]),
              ),
            ),
            content: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SizedBox(
                height: size.height * 0.7,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 5,
                    );
                  },
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const FoodCart();
                  },
                ),
              ),
            )),
        AccordionSection(
            contentHorizontalPadding: 1,
            contentBorderColor: Colors.transparent,
            contentVerticalPadding: 5,
            contentBorderWidth: 1,
            scrollIntoViewOfItems: ScrollIntoViewOfItems.fast,
            header: Container(
              padding: const EdgeInsets.all(10),
              width: size.width,
              height: 42,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Family Combo',
                      style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Palette.white)),
                  const WidgetSpan(child: SizedBox(width: 5)),
                  TextSpan(
                      text: '(5 items)',
                      style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Palette.white)),
                ]),
              ),
            ),
            content: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SizedBox(
                height: size.height * 0.7,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 5,
                    );
                  },
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const FoodCart();
                  },
                ),
              ),
            )),
        AccordionSection(
            contentHorizontalPadding: 1,
            contentBorderColor: Colors.transparent,
            contentVerticalPadding: 5,
            contentBorderWidth: 1,
            scrollIntoViewOfItems: ScrollIntoViewOfItems.fast,
            header: Container(
              padding: const EdgeInsets.all(10),
              width: size.width,
              height: 42,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Family Combo',
                      style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Palette.white)),
                  const WidgetSpan(child: SizedBox(width: 5)),
                  TextSpan(
                      text: '(5 items)',
                      style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Palette.white)),
                ]),
              ),
            ),
            content: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SizedBox(
                height: size.height * 0.7,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 5,
                    );
                  },
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const FoodCart();
                  },
                ),
              ),
            )),
        AccordionSection(
            contentHorizontalPadding: 1,
            contentBorderColor: Colors.transparent,
            contentVerticalPadding: 5,
            contentBorderWidth: 1,
            scrollIntoViewOfItems: ScrollIntoViewOfItems.fast,
            header: Container(
              padding: const EdgeInsets.all(10),
              width: size.width,
              height: 42,
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: 'Family Combo',
                      style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Palette.white)),
                  const WidgetSpan(child: SizedBox(width: 5)),
                  TextSpan(
                      text: '(5 items)',
                      style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Palette.white)),
                ]),
              ),
            ),
            content: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SizedBox(
                height: size.height * 0.7,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 5,
                    );
                  },
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const FoodCart();
                  },
                ),
              ),
            ))
      ],
    );
  }
}
