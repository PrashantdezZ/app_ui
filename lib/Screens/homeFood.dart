import 'package:app_ui/design/design.dart';
import 'package:app_ui/widget/adsCard.dart';
import 'package:app_ui/widget/carouselForBanner.dart';
import 'package:app_ui/widget/deliveryCard.dart';
import 'package:app_ui/widget/foodCategory.dart';
import 'package:app_ui/widget/headerWithSearch.dart';
import 'package:app_ui/widget/headingText.dart';
import 'package:app_ui/widget/headingWithLink.dart';
import 'package:app_ui/widget/nearByrestroCard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeFood extends StatelessWidget {
  const HomeFood({super.key});

  @override
  Widget build(BuildContext context) {
    const int CurrentIndex = 0;
    Size size = MediaQuery.of(context).size;
    final searchController = TextEditingController();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(132),
        child: HeaderWithSearch(size: size),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          const CarouselForBanner(),
          const HeadingWithLink(),
          Container(
            padding: const EdgeInsets.all(10),
            height: 250,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 12,
                );
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                return const DeliveyCard(
                  deliveryTime: 25,
                  restroName: "Mad Chef's Kitchen",
                  location: '3 rd lane,West mumbai',
                  discount: 25,
                  rating: 4.2,
                  noOfRating: 500,
                );
              },
            ),
          ),
          HeadingText(
            heading: "What's is on your mind?",
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return const FoodCategory();
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          HeadingText(
            heading: "Your daily deals",
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 113,
                  width: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset('assets/images/dailydealsimg.png'),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          HeadingText(
            heading: "34 Restuarants near you",
          ),
          SizedBox(
            height: size.height * 0.78,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return const NearByRestroCard(
                    deliveryType: 'Free Delivery',
                    rating: 4.2,
                    noOfRating: 500,
                    deliveryTime: 25,
                    restroName: "Mad Chef's Kitchen",
                    location: '3 rd lane,WestMumbai');
              },
            ),
          ),

          ///Ads Section
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
            height: 229,
            width: size.width * 1,
            color: Palette.kPrimaryText,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Top Offers',
                  style: GoogleFonts.tajawal(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Palette.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 185,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 11,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const AdsCard(
                        percentage: 50,
                        restroName: "Mad Chef's Kitchen",
                        rating: 4.0,
                        deliverTime: 30,
                        textColor: Palette.white,
                      );
                    },
                  ),
                ),
              ],
            ),
          )

          ///Ads Section end
          ,
          SizedBox(
            height: size.height * 0.78,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return const NearByRestroCard(
                    deliveryType: 'Free Delivery',
                    rating: 4.2,
                    noOfRating: 500,
                    deliveryTime: 25,
                    restroName: "Mad Chef's Kitchen",
                    location: '3 rd lane,WestMumbai');
              },
            ),
          ),

          Container(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
            height: 229,
            width: size.width * 1,
            color: Palette.pinkFill,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Featured Top rated Restuarants',
                  style: GoogleFonts.tajawal(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Palette.kPrimaryText),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 185,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 11,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const AdsCard(
                        percentage: 50,
                        restroName: "Mad Chef's Kitchen",
                        rating: 4.0,
                        deliverTime: 30,
                        textColor: Palette.kPrimaryText,
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
