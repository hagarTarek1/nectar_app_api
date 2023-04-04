import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:nectar/view/components/bannerDetails.dart';

import '../../model/banner.dart';
class BannerSection extends StatelessWidget {
   BannerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 19 / 6,
        enlargeCenterPage: true,
        viewportFraction: 0.8,
      ),
      items: banners.map((item) => BannersDetails(
        banner: item,
      )
      ).toList()
    );
  }
}
