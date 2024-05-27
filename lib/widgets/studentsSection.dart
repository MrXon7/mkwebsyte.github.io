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
           crossAxisCount: size.width>=1033?4:size.width>=484?2:1,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          children: [
            ProfileCard(
              imageUrl: 'images/avatar.jpg', // haqiqiy rasm URLini bu yerga qo'ying
              title: "O'quvchi",
              name: 'Sophia Rose',
            ),
            ProfileCard(
              imageUrl: 'images/avatar.jpg', // haqiqiy rasm URLini bu yerga qo'ying
              title: "O'quvchi",
              name: 'Cindy Walker',
            ),
            ProfileCard(
              imageUrl: 'images/avatar.jpg', // haqiqiy rasm URLini bu yerga qo'ying
              title: "O'quvchi",
              name: 'David Hutson',
            ),
            ProfileCard(
              imageUrl: 'images/avatar.jpg',  // haqiqiy rasm URLini bu yerga qo'ying
              title: "O'quvchi",
              name: 'Stella Blair',
            ),
          ],
        ),
      ),
    );
  }
}
