import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'rounded_image.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(123, 106, 218, 1),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(300)),
        ),
        width: size.width,
        height: size.height * 1,
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.1, vertical: 50),
        child: CarouselSlider(
          options: CarouselOptions(viewportFraction: 1),
          items: [
            Rounded_image(img_url: "carousel/carousel_1.jpg"),
            Rounded_image(img_url: "carousel/carousel_2.jpg"),
            Rounded_image(img_url: "carousel/carousel_3.jpg"),
          ],
        ));
  }
}