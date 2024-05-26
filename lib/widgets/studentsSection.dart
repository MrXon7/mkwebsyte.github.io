import 'package:flutter/material.dart';

import 'profile_card.dart';

class StudentsSection extends StatelessWidget {
  const StudentsSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height*0.7,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            ProfileCard(
              imageUrl: 'images/avatar.jpg', // haqiqiy rasm URLini bu yerga qo'ying
              title: 'UX O\'qituvchisi',
              name: 'Sophia Rose',
            ),
            ProfileCard(
              imageUrl: 'images/avatar.jpg', // haqiqiy rasm URLini bu yerga qo'ying
              title: 'Grafik O\'qituvchisi',
              name: 'Cindy Walker',
            ),
            ProfileCard(
              imageUrl: 'images/avatar.jpg', // haqiqiy rasm URLini bu yerga qo'ying
              title: 'Full Stack Master',
              name: 'David Hutson',
            ),
            ProfileCard(
              imageUrl: 'images/avatar.jpg',  // haqiqiy rasm URLini bu yerga qo'ying
              title: 'Raqamli Animator',
              name: 'Stella Blair',
            ),
          ],
        ),
      ),
    );
  }
}
