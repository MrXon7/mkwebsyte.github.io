import 'package:flutter/material.dart';

import 'news_card.dart';

class NewsSection extends StatelessWidget {
  const NewsSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      child: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          CourseCard(
            imageUrl: 'images/news.jpg', // haqiqiy rasm URLini bu yerga qo'ying
            tag: 'WEB DESIGN',
            title: 'UI Best Practices',
            date: '16 Feb 2036',
            duration: '22 Hours',
            price: '\$120',
          ),
          CourseCard(
            imageUrl: 'images/news.jpg', // haqiqiy rasm URLini bu yerga qo'ying
            tag: 'FRONT END',
            title: 'New Design Trend',
            date: '24 Feb 2036',
            duration: '30 Hours',
            price: '\$320',
          ),
        ],
      ),
    );
  }
}