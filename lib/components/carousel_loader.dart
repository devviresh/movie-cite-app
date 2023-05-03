import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselLoader extends StatelessWidget {
  const CarouselLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        for (int i = 0; i < 3; i++)
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xff424242),
            ),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
      ],
      options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          autoPlayInterval: Duration(seconds: 2),
          height: 230,
          aspectRatio: 9 / 9,
          enlargeFactor: 0.2),
    );
  }
}
