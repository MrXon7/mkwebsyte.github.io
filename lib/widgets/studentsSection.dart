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
    return  size.width>=880? Row(
      children: [
        ProfileCard(
          imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png', // haqiqiy rasm URLini bu yerga qo'ying
          title: "O'quvchi",
          name: 'Sophia Rose',
        ),
        ProfileCard(
          imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png', // haqiqiy rasm URLini bu yerga qo'ying
          title: "O'quvchi",
          name: 'Cindy Walker',
        ),
        ProfileCard(
          imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png', // haqiqiy rasm URLini bu yerga qo'ying
          title: "O'quvchi",
          name: 'David Hutson',
        ),
        ProfileCard(
          imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png',  // haqiqiy rasm URLini bu yerga qo'ying
          title: "O'quvchi",
          name: 'Stella Blair',
        ),
      ],
    ):
    Column(
      children: [
        ProfileCard(
          imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png', // haqiqiy rasm URLini bu yerga qo'ying
          title: "O'quvchi",
          name: 'Sophia Rose',
        ),
        ProfileCard(
          imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png', // haqiqiy rasm URLini bu yerga qo'ying
          title: "O'quvchi",
          name: 'Cindy Walker',
        ),
        ProfileCard(
          imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png', // haqiqiy rasm URLini bu yerga qo'ying
          title: "O'quvchi",
          name: 'David Hutson',
        ),
        ProfileCard(
          imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/User-avatar.svg/2048px-User-avatar.svg.png',  // haqiqiy rasm URLini bu yerga qo'ying
          title: "O'quvchi",
          name: 'Stella Blair',
        ),
      ],
    );

  }
}
