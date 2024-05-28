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
      padding: EdgeInsets.all(16),
      height: size.height,
      child: Column(
        children: [
          CourseCard(
            imageUrl: 'images/news.jpg', // haqiqiy rasm URLini bu yerga qo'ying
            tag: 'WEB DESIGN',
            title: 'UI Best Practices',
            date: '16 Feb 2036',

          ),
          CourseCard(
            imageUrl: 'images/news.jpg', // haqiqiy rasm URLini bu yerga qo'ying
            tag: 'FRONT END',
            title: 'New Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design TrendNew Design Trend',
            date: '24 Feb 2036',

          ),
        ],
      ),
    );
  }
}