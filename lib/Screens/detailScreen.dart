import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:app_ui/design/design.dart';
import 'package:app_ui/widgets/discountCard.dart';
import 'package:app_ui/widgets/filterWidget.dart';
import 'package:app_ui/widgets/floatingButton.dart';
import 'package:app_ui/widgets/food_accrodion.dart';
import 'package:app_ui/widgets/foodcart.dart';
import 'package:app_ui/widgets/groupOrder.dart';
import 'package:app_ui/widgets/navwithsearch.dart';
import 'package:app_ui/widgets/schedulbotton.dart';
import 'package:app_ui/widgets/textWithRatingAnddis.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final List<bool> _isOpen = [false, false];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            floatingActionButton: const Padding(
                padding: EdgeInsets.only(bottom: 100), child: FloatingButton()),
            body: SingleChildScrollView(
              child: SizedBox(
                height: size.height * 2,
                width: size.width * 1,
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        child: Image.asset(
                          'assets/images/background.png',
                        )),
                    const Positioned(top: 0, child: NavWithShare()),
                    Positioned(
                      top: 180,
                      bottom: 0,
                      child: Container(
                        height: size.height * 1.7,
                        width: size.width * 1,
                        decoration: const BoxDecoration(
                            color: Palette.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        child: Column(children: const [
                          TextWithRatingAndDistanceSection(),
                          DiscountCard(),

                          FilterWidget(),

                          FoodAccordion(),
                        
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottomSheet: const GroupOderButton()));
  }
}
