import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselForBanner extends StatelessWidget {
  const CarouselForBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 3,
      itemBuilder: (context, index, realIndex) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              'assets/images/banner.png',
              height: 150,
              width: 330,
            ),
          ),
        );
      },
      options: CarouselOptions(
        viewportFraction: 1,
        autoPlay: true,
        height: 180,
      )
      );
  }
}
