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
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(300)),
        ),
        width: size.width,
        height: size.height * 1,
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: 90),
        child: CarouselSlider(
          options: CarouselOptions(viewportFraction: 1),
          items: [
            Rounded_image(
              img_url: "carousel/carousel_1.jpg",
              title: "To'raqo'rg'on tumani \n58-Maktab",
              subtitle:
                  'Scholar is a free CSS template designed by TemplateMo for online educational related websites. This layout is based on the famous Bootstrap v5.3.0 framework.',
            ),
            Rounded_image(
                img_url: "carousel/carousel_2.jpg",
                title: "Bu yerda maktab \nhaqida ma'lmot",
                subtitle:
                    'Scholar is a free CSS template designed by TemplateMo for online educational related websites. This layout is based on the famous Bootstrap v5.3.0 framework.'),
            Rounded_image(
                img_url: "carousel/carousel_3.jpg",
                title: "Bu yerda maktab \nhaqida ma'lmot",
                subtitle:
                    'Scholar is a free CSS template designed by TemplateMo for online educational related websites. This layout is based on the famous Bootstrap v5.3.0 framework.'),
          ],
        ));
  }
}
