import 'package:flutter/material.dart';

import 'about_card.dart';

class AbautSection extends StatelessWidget {
  const AbautSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(right: size.width*0.05, top: 50),
        padding: const EdgeInsets.symmetric(vertical: 100),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(123, 106, 218, 1),
          borderRadius: BorderRadius.horizontal(right: Radius.circular(150)),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildStatCard(number: "50+", label: "O'qituvchilar",),
            buildStatCard(number: "804+", label: "O'quvchilar",),
            buildStatCard(number: "400+", label: "O'g'il bolalar",),
            buildStatCard(number: "404+", label: 'Qiz bolalar',),
          ],
        ),
      ),
    );
  }
}